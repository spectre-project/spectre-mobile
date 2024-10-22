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
      kSpectreNetworkIdMainnet: kSpectreExplorerMainnet,
      kSpectreNetworkIdTestnet10: kSpectreExplorerTestnet10,
      kSpectreNetworkIdTestnet11: kSpectreExplorerTestnet11,
    })
    Map<String, BlockExplorer> selection,
  }) = _BlockExplorerSettings;

  BlockExplorer explorerForNetwork(String networkId) {
    return selection[networkId] ?? kSpectreExplorerMainnet;
  }

  factory BlockExplorerSettings.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerSettingsFromJson(json);
}
