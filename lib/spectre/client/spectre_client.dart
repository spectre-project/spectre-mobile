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
  Future<SpectredResponse> _singleRequest(SpectredRequest message) async {
    return SpectredResponse();
  }

  @override
  Stream<SpectredResponse> _streamRequest(SpectredRequest message) {
    return StreamController<SpectredResponse>().stream;
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

  Future<SpectredResponse> _singleRequest(SpectredRequest message) async {
    final request = StreamController<SpectredRequest>();
    final response = rpcClient.messageStream(request.stream);

    request.sink.add(message);
    final result = await response.first;

    response.cancel();
    request.close();

    return result;
  }

  Stream<SpectredResponse> _streamRequest(SpectredRequest message) {
    final request = StreamController<SpectredRequest>();
    final response = rpcClient.messageStream(request.stream);

    request.sink.add(message);

    return response;
  }

  Future<List<RpcBalancesByAddressesEntry>> getBalancesByAddresses(
    Iterable<String> addresses,
  ) async {
    final message = SpectredRequest(
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

  Future<List<RpcUtxosByAddressesEntry>> getUtxosByAddresses(
    Iterable<String> addresses,
  ) async {
    final message = SpectredRequest(
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
    final message = SpectredRequest(
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
    final message = SpectredRequest(
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
    final message = SpectredRequest(
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
    final message = SpectredRequest(
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

  Future<RpcMempoolEntry> getMempoolEntry({
    required String txId,
    bool includeOrphanPool = true,
    bool filterTransactionPool = true,
  }) async {
    final message = SpectredRequest(
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

  Future<List<RpcMempoolEntry>> getMempoolEntries({
    bool includeOrphanPool = true,
    bool filterTransactionPool = true,
  }) async {
    final message = SpectredRequest(
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

  Future<List<RpcMempoolEntryByAddress>> getMempoolEntriesByAddresses(
    Iterable<String> addresses, {
    bool filterTransactionPool = true,
    bool includeOrphanPool = true,
  }) async {
    final message = SpectredRequest(
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

  Future<String> getCurrentNetwork() async {
    final message = SpectredRequest(
      getCurrentNetworkRequest: GetCurrentNetworkRequestMessage(),
    );

    final result = await _singleRequest(message);
    final error = result.getCurrentNetworkResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getCurrentNetworkResponse.currentNetwork;
  }

  Future<GetBlockDagInfoResponseMessage> getBlockDagInfo() async {
    final message = SpectredRequest(
      getBlockDagInfoRequest: GetBlockDagInfoRequestMessage(),
    );

    final result = await _singleRequest(message);
    final error = result.getBlockDagInfoResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getBlockDagInfoResponse;
  }

  // Get Info

  Future<GetInfoResponseMessage> getInfo() async {
    final message = SpectredRequest(
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

  Stream<VirtualChainChangedNotificationMessage>
      notifyVirtualSelectedParentChainChanged({
    required includeAcceptedTransactionIds,
  }) {
    final message = SpectredRequest(
      notifyVirtualChainChangedRequest: NotifyVirtualChainChangedRequestMessage(
        includeAcceptedTransactionIds: includeAcceptedTransactionIds,
      ),
    );

    final response = _streamRequest(message);

    final result = response.map((event) {
      final error = event.notifyVirtualChainChangedResponse.error;
      if (error.message.isNotEmpty) {
        throw RpcException(error);
      }
      return event.virtualChainChangedNotification;
    }).skip(1);

    return result;
  }

  // Virtual Selected Parent Blue Score

  Future<Int64> getVirtualSelectedParentBlueScore() async {
    final message = SpectredRequest(
      getSinkBlueScoreRequest: GetSinkBlueScoreRequestMessage(),
    );

    final result = await _singleRequest(message);
    final error = result.getSinkBlueScoreResponse.error;
    if (error.message.isNotEmpty) {
      throw RpcException(error);
    }

    return result.getSinkBlueScoreResponse.blueScore;
  }

  Stream<Int64> notifyVirtualSelectedParentBlueScoreChanged() {
    final message = SpectredRequest(
      notifySinkBlueScoreChangedRequest:
          NotifySinkBlueScoreChangedRequestMessage(),
    );

    final response = _streamRequest(message);

    final result = response.map((event) {
      final error = event.notifySinkBlueScoreChangedResponse.error;
      if (error.message.isNotEmpty) {
        throw RpcException(error);
      }
      return event.sinkBlueScoreChangedNotification.sinkBlueScore;
    }).skip(1);

    return result;
  }

  // Virtual DAA Score

  Stream<Int64> notifyVirtualDaaScoreChanged() {
    final message = SpectredRequest(
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
    final message = SpectredRequest(
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
