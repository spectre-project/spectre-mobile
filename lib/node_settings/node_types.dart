import 'dart:math';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../spectre/spectre.dart';

part 'node_types.freezed.dart';
part 'node_types.g.dart';

const mainnetNodeConfig1 = NodeConfig(
  id: 'd093b14d-da55-4e49-870d-61d63bf201a3',
  name: 'Spectrum Official',
  urls: ['node.spectre-network.org'],
  isSecure: true,
  network: SpectreNetwork.mainnet,
);

const mainnetNodeConfig2 = NodeConfig(
  id: '9aee5258-0a32-4731-8a49-360f49c49a72',
  name: 'Spectrum Official-2',
  urls: ['node2.spectre-network.xyz'],
  isSecure: true,
  network: SpectreNetwork.mainnet,
);

@freezed
class NodeConfigSettings with _$NodeConfigSettings {
  const factory NodeConfigSettings({
    @Default(IListConst([mainnetNodeConfig1, mainnetNodeConfig2]))
    IList<NodeConfig> options,
    @Default(mainnetNodeConfig1) NodeConfig selected,
  }) = _NodeConfigSettings;

  factory NodeConfigSettings.fromJson(Map<String, dynamic> json) =>
      _$NodeConfigSettingsFromJson(json);
}

@freezed
class NodeConfig with _$NodeConfig {
  const NodeConfig._();
  const factory NodeConfig({
    required String id,
    required String name,
    @Default(false) bool isDns,
    @Default(false) bool isSecure,
    required List<String> urls,
    required SpectreNetwork network,
    @Default('') String networkSuffix,
  }) = _NodeConfig;

  String get networkId => network.idWithSuffix(networkSuffix);

  factory NodeConfig.fromJson(Map<String, dynamic> json) =>
      _$NodeConfigFromJson(json);
}

@freezed
class ActiveNodeConfig with _$ActiveNodeConfig {
  ActiveNodeConfig._();
  factory ActiveNodeConfig({
    required NodeConfig config,
  }) = _ActiveNodeConfig;

  String get name => config.name;
  SpectreNetwork get network => config.network;

  bool get isSecure => config.isSecure;
  late final String url = config.urls[Random().nextInt(config.urls.length)];
  late final String networkId = config.networkId;
}

@freezed
class AddNodeSheetState with _$AddNodeSheetState {
  const factory AddNodeSheetState({
    @Default(true) bool showNameHint,
    @Default(true) bool showUrlHint,
    @Default('') String nameValidationText,
    @Default('') String urlValidationText,
  }) = _AddNodeSheetState;
}
