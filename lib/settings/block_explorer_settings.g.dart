// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_explorer_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockExplorerSettingsImpl _$$BlockExplorerSettingsImplFromJson(Map json) =>
    _$BlockExplorerSettingsImpl(
      selection: (json['selection'] as Map?)?.map(
            (k, e) => MapEntry($enumDecode(_$SpectreNetworkEnumMap, k),
                BlockExplorer.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {
            SpectreNetwork.mainnet: kSpectreExplorerMainnet,
            SpectreNetwork.testnet: kSpectreExplorerMainnet,
            SpectreNetwork.devnet: kSpectreExplorerMainnet,
            SpectreNetwork.simnet: kSpectreExplorerMainnet
          },
    );

Map<String, dynamic> _$$BlockExplorerSettingsImplToJson(
        _$BlockExplorerSettingsImpl instance) =>
    <String, dynamic>{
      'selection': instance.selection
          .map((k, e) => MapEntry(_$SpectreNetworkEnumMap[k]!, e.toJson())),
    };

const _$SpectreNetworkEnumMap = {
  SpectreNetwork.mainnet: 'mainnet',
  SpectreNetwork.testnet: 'testnet',
  SpectreNetwork.devnet: 'devnet',
  SpectreNetwork.simnet: 'simnet',
};
