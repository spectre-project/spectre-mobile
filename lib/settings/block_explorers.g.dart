// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_explorers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockExplorerImpl _$$BlockExplorerImplFromJson(Map json) =>
    _$BlockExplorerImpl(
      network: $enumDecode(_$SpectreNetworkEnumMap, json['network']),
      name: json['name'] as String,
      url: json['url'] as String,
      addressUrl: json['addressUrl'] as String,
      txUrl: json['txUrl'] as String,
    );

Map<String, dynamic> _$$BlockExplorerImplToJson(_$BlockExplorerImpl instance) =>
    <String, dynamic>{
      'network': _$SpectreNetworkEnumMap[instance.network]!,
      'name': instance.name,
      'url': instance.url,
      'addressUrl': instance.addressUrl,
      'txUrl': instance.txUrl,
    };

const _$SpectreNetworkEnumMap = {
  SpectreNetwork.mainnet: 'mainnet',
  SpectreNetwork.testnet: 'testnet',
  SpectreNetwork.devnet: 'devnet',
  SpectreNetwork.simnet: 'simnet',
};
