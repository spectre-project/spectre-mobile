import 'package:freezed_annotation/freezed_annotation.dart';

import '../spectre/spectre.dart';
import 'block_explorers.dart';

part 'block_explorer_settings.freezed.dart';
part 'block_explorer_settings.g.dart';

@freezed
class BlockExplorerSettings with _$BlockExplorerSettings {
  const BlockExplorerSettings._();

  const factory BlockExplorerSettings({
    @Default(const {
      SpectreNetwork.mainnet: kSpectreExplorerMainnet,
      SpectreNetwork.testnet: kSpectreExplorerMainnet,
      SpectreNetwork.devnet: kSpectreExplorerMainnet,
      SpectreNetwork.simnet: kSpectreExplorerMainnet,
    })
        Map<SpectreNetwork, BlockExplorer> selection,
  }) = _BlockExplorerSettings;

  BlockExplorer explorerForNetwork(SpectreNetwork network) {
    return selection[network] ?? kSpectreExplorerMainnet;
  }

  factory BlockExplorerSettings.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerSettingsFromJson(json);
}
