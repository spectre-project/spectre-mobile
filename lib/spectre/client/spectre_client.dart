import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import '../grpc/messages.pbgrpc.dart';
import '../grpc/rpc.pb.dart';
import '../network.dart';

class RpcException implements Exception {
  final RPCError error;

  const RpcException(this.error);

  String get message => error.message;

  @override
  String toString() => message;
}

class VoidSpectreClient extends SpectreClient {
  VoidSpectreClient()
      : super(
          channel: ClientChannel(
            'localhost',
            port: 18110,
            options: ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @override
  Future<SpectredMessage> _singleRequest(SpectredMessage message) async {
    return SpectredMessage();
  }

  @override
  Stream<SpectredMessage> _streamRequest(SpectredMessage message) {
    return StreamController<SpectredMessage>().stream;
  }

  @override
  Future<void> close() async {}

  @override
  Future<void> terminate() async {}
}

class SpectreClient {
  late final ClientChannel channel;
  late final RPCClient rpcClient;

  SpectreClient({required this.channel}) : rpcClient = RPCClient(channel);

  factory SpectreClient.url(String url, {bool isSecure = false}) {
    final components = url.split(':');
    final host = components.first;
    final port = int.tryParse(components.last) ?? kMainnetRpcPort;

    final channel = ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: isSecure
            ? ChannelCredentials.secure()
            : ChannelCredentials.insecure(),
      ),
    );

    return SpectreClient(channel: channel);
  }

  Future<void> close() => channel.shutdown();

  Future<void> terminate() => channel.terminate();

  Future<SpectredMessage> _singleRequest(SpectredMessage message) async {
    final request = StreamController<SpectredMessage>();
    final response = rpcClient.messageStream(request.stream);

    request.sink.add(message);
    final result = await response.first;

    response.cancel();
    request.close();

    return result;
  }

  Stream<SpectredMessage> _streamRequest(SpectredMessage message) {
    final request = StreamController<SpectredMessage>();
    final response = rpcClient.messageStream(request.stream);

    request.sink.add(message);

    return response;
  }

  Future<List<BalancesByAddressEntry>> getBalancesByAddresses(
    Iterable<String> addresses,
  ) async {
    final message = SpectredMessage(
      getBalancesByAddressesRequest: GetBalancesByAddressesRequestMessage(
        addresses: addresses,
      ),
    );

    final response = await _singleRequest(message);
    final error = response.getBalancesByAddressesResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }
    return response.getBalancesByAddressesResponse.entries;
  }

  Future<List<UtxosByAddressesEntry>> getUtxosByAddresses(
    Iterable<String> addresses,
  ) async {
    final message = SpectredMessage(
      getUtxosByAddressesRequest: GetUtxosByAddressesRequestMessage(
        addresses: addresses,
      ),
    );

    final result = await _singleRequest(message);
    final error = result.getUtxosByAddressesResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getUtxosByAddressesResponse.entries;
  }

  Stream<UtxosChangedNotificationMessage> notifyUtxosChanged(
    Iterable<String> addresses,
  ) {
    final message = SpectredMessage(
      notifyUtxosChangedRequest: NotifyUtxosChangedRequestMessage(
        addresses: addresses,
      ),
    );

    final response = _streamRequest(message);

    final result = response.map((event) {
      final error = event.notifyUtxosChangedResponse.error;
      if (error.message.isNotEmpty) {
        throw RpcException(error);
      }
      return event.utxosChangedNotification;
    }).skip(1);

    return result;
  }

  Future<void> stopNotifyingUtxosChanged(List<String> addresses) async {
    final message = SpectredMessage(
      stopNotifyingUtxosChangedRequest: StopNotifyingUtxosChangedRequestMessage(
        addresses: addresses,
      ),
    );

    final response = await _singleRequest(message);
    final error = response.stopNotifyingUtxosChangedResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }
  }

  // Block Notifications

  Stream<BlockAddedNotificationMessage> notifyBlockAdded() {
    final message = SpectredMessage(
      notifyBlockAddedRequest: NotifyBlockAddedRequestMessage(),
    );

    final response = _streamRequest(message);

    final result = response.map((event) {
      final error = event.notifyBlockAddedResponse.error;
      if (error.message.isNotEmpty) {
        throw RpcException(error);
      }
      return event.blockAddedNotification;
    }).skip(1);

    return result;
  }

  // Submit Transaction

  Future<String> submitTransaction(
    RpcTransaction transaction, {
    bool allowOrphan = false,
  }) async {
    final message = SpectredMessage(
      submitTransactionRequest: SubmitTransactionRequestMessage(
        transaction: transaction,
        allowOrphan: allowOrphan,
      ),
    );

    final result = await _singleRequest(message);
    final error = result.submitTransactionResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.submitTransactionResponse.transactionId;
  }

  // Mempool

  Future<MempoolEntry> getMempoolEntry({
    required String txId,
    bool includeOrphanPool = true,
    bool filterTransactionPool = true,
  }) async {
    final message = SpectredMessage(
      getMempoolEntryRequest: GetMempoolEntryRequestMessage(
        txId: txId,
        includeOrphanPool: includeOrphanPool,
        filterTransactionPool: filterTransactionPool,
      ),
    );

    final result = await _singleRequest(message);
    final error = result.getMempoolEntryResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getMempoolEntryResponse.entry;
  }

  Future<List<MempoolEntry>> getMempoolEntries({
    bool includeOrphanPool = true,
    bool filterTransactionPool = true,
  }) async {
    final message = SpectredMessage(
      getMempoolEntriesRequest: GetMempoolEntriesRequestMessage(
        includeOrphanPool: includeOrphanPool,
        filterTransactionPool: filterTransactionPool,
      ),
    );

    final result = await _singleRequest(message);
    final error = result.getMempoolEntriesResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getMempoolEntriesResponse.entries;
  }

  Future<List<MempoolEntryByAddress>> getMempoolEntriesByAddresses(
    Iterable<String> addresses, {
    bool filterTransactionPool = true,
    bool includeOrphanPool = true,
  }) async {
    final message = SpectredMessage(
      getMempoolEntriesByAddressesRequest:
          GetMempoolEntriesByAddressesRequestMessage(
        addresses: addresses,
        filterTransactionPool: filterTransactionPool,
        includeOrphanPool: includeOrphanPool,
      ),
    );

    final result = await _singleRequest(message);
    final error = result.getMempoolEntriesByAddressesResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getMempoolEntriesByAddressesResponse.entries;
  }

  // Network info

  Future<String> getNetworkName() async {
    final message = SpectredMessage(
      getCurrentNetworkRequest: GetCurrentNetworkRequestMessage(),
    );

    final result = await _singleRequest(message);
    final error = result.getCurrentNetworkResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getCurrentNetworkResponse.currentNetwork;
  }

  // Get Info

  Future<GetInfoResponseMessage> getInfo() async {
    final message = SpectredMessage(
      getInfoRequest: GetInfoRequestMessage(),
    );

    final result = await _singleRequest(message);
    final error = result.getInfoResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getInfoResponse;
  }

  // Virtual Selected Parent Chain Changed

  Stream<VirtualSelectedParentChainChangedNotificationMessage>
      notifyVirtualSelectedParentChainChanged({
    required includeAcceptedTransactionIds,
  }) {
    final message = SpectredMessage(
      notifyVirtualSelectedParentChainChangedRequest:
          NotifyVirtualSelectedParentChainChangedRequestMessage(
        includeAcceptedTransactionIds: includeAcceptedTransactionIds,
      ),
    );

    final response = _streamRequest(message);

    final result = response.map((event) {
      final error = event.notifyVirtualSelectedParentChainChangedResponse.error;
      if (error.message.isNotEmpty) {
        throw RpcException(error);
      }
      return event.virtualSelectedParentChainChangedNotification;
    }).skip(1);

    return result;
  }

  // Virtual Selected Parent Blue Score

  Future<Int64> getVirtualSelectedParentBlueScore() async {
    final message = SpectredMessage(
      getVirtualSelectedParentBlueScoreRequest:
          GetVirtualSelectedParentBlueScoreRequestMessage(),
    );

    final result = await _singleRequest(message);
    final error = result.getVirtualSelectedParentBlueScoreResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getVirtualSelectedParentBlueScoreResponse.blueScore;
  }

  Stream<Int64> notifyVirtualSelectedParentBlueScoreChanged() {
    final message = SpectredMessage(
      notifyVirtualSelectedParentBlueScoreChangedRequest:
          NotifyVirtualSelectedParentBlueScoreChangedRequestMessage(),
    );

    final response = _streamRequest(message);

    final result = response.map((event) {
      final error =
          event.notifyVirtualSelectedParentBlueScoreChangedResponse.error;
      if (error.message.isNotEmpty) {
        throw RpcException(error);
      }
      return event.virtualSelectedParentBlueScoreChangedNotification
          .virtualSelectedParentBlueScore;
    }).skip(1);

    return result;
  }

  // Virtual DAA Score

  Stream<Int64> notifyVirtualDaaScoreChanged() {
    final message = SpectredMessage(
      notifyVirtualDaaScoreChangedRequest:
          NotifyVirtualDaaScoreChangedRequestMessage(),
    );

    final response = _streamRequest(message);

    final result = response.map((event) {
      final error = event.notifyVirtualDaaScoreChangedResponse.error;
      if (error.message.isNotEmpty) {
        throw RpcException(error);
      }
      return event.virtualDaaScoreChangedNotification.virtualDaaScore;
    }).skip(1);

    return result;
  }

  Future<RpcBlock> getBlockByHash(
    String hash, {
    bool includeTransactions = true,
  }) async {
    final message = SpectredMessage(
      getBlockRequest: GetBlockRequestMessage(
        hash: hash,
        includeTransactions: includeTransactions,
      ),
    );

    final result = await _singleRequest(message);
    final error = result.getBlockResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getBlockResponse.block;
  }
}
