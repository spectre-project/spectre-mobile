import 'package:freezed_annotation/freezed_annotation.dart';

import '../spectre/spectre.dart';

part 'block_explorers.freezed.dart';
part 'block_explorers.g.dart';

const kParamPattern = '{0}';

@freezed
class BlockExplorer with _$BlockExplorer {
  const BlockExplorer._();
  const factory BlockExplorer({
    required SpectreNetwork network,
    required String name,
    required String url,
    required String addressUrl,
    required String txUrl,
  }) = _BlockExplorer;

  String urlForAddress(String address) =>
      addressUrl.replaceFirst(kParamPattern, address);

  String urlForTx(String hash) => txUrl.replaceFirst(kParamPattern, hash);

  factory BlockExplorer.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerFromJson(json);
}

const kSpectreExplorerMainnet = BlockExplorer(
  network: SpectreNetwork.mainnet,
  name: 'Spectre Explorer',
  url: 'explorer.spectre-network.org',
  addressUrl: 'https://explorer.spectre-network.org/addresses/$kParamPattern',
  txUrl: 'https://explorer.spectre-network.org/txs/$kParamPattern',
);

const kBlockExplorerOptions = {
  SpectreNetwork.mainnet: [
    kSpectreExplorerMainnet,
  ],
  SpectreNetwork.testnet: [],
  SpectreNetwork.devnet: [],
  SpectreNetwork.simnet: [],
};
