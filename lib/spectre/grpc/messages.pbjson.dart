//
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use spectredRequestDescriptor instead')
const SpectredRequest$json = {
  '1': 'SpectredRequest',
  '2': [
    {'1': 'id', '3': 101, '4': 1, '5': 4, '10': 'id'},
    {'1': 'getCurrentNetworkRequest', '3': 1001, '4': 1, '5': 11, '6': '.protowire.GetCurrentNetworkRequestMessage', '9': 0, '10': 'getCurrentNetworkRequest'},
    {'1': 'submitBlockRequest', '3': 1003, '4': 1, '5': 11, '6': '.protowire.SubmitBlockRequestMessage', '9': 0, '10': 'submitBlockRequest'},
    {'1': 'getBlockTemplateRequest', '3': 1005, '4': 1, '5': 11, '6': '.protowire.GetBlockTemplateRequestMessage', '9': 0, '10': 'getBlockTemplateRequest'},
    {'1': 'notifyBlockAddedRequest', '3': 1007, '4': 1, '5': 11, '6': '.protowire.NotifyBlockAddedRequestMessage', '9': 0, '10': 'notifyBlockAddedRequest'},
    {'1': 'getPeerAddressesRequest', '3': 1010, '4': 1, '5': 11, '6': '.protowire.GetPeerAddressesRequestMessage', '9': 0, '10': 'getPeerAddressesRequest'},
    {'1': 'GetSinkRequest', '3': 1012, '4': 1, '5': 11, '6': '.protowire.GetSinkRequestMessage', '9': 0, '10': 'GetSinkRequest'},
    {'1': 'getMempoolEntryRequest', '3': 1014, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntryRequestMessage', '9': 0, '10': 'getMempoolEntryRequest'},
    {'1': 'getConnectedPeerInfoRequest', '3': 1016, '4': 1, '5': 11, '6': '.protowire.GetConnectedPeerInfoRequestMessage', '9': 0, '10': 'getConnectedPeerInfoRequest'},
    {'1': 'addPeerRequest', '3': 1018, '4': 1, '5': 11, '6': '.protowire.AddPeerRequestMessage', '9': 0, '10': 'addPeerRequest'},
    {'1': 'submitTransactionRequest', '3': 1020, '4': 1, '5': 11, '6': '.protowire.SubmitTransactionRequestMessage', '9': 0, '10': 'submitTransactionRequest'},
    {'1': 'notifyVirtualChainChangedRequest', '3': 1022, '4': 1, '5': 11, '6': '.protowire.NotifyVirtualChainChangedRequestMessage', '9': 0, '10': 'notifyVirtualChainChangedRequest'},
    {'1': 'getBlockRequest', '3': 1025, '4': 1, '5': 11, '6': '.protowire.GetBlockRequestMessage', '9': 0, '10': 'getBlockRequest'},
    {'1': 'getSubnetworkRequest', '3': 1027, '4': 1, '5': 11, '6': '.protowire.GetSubnetworkRequestMessage', '9': 0, '10': 'getSubnetworkRequest'},
    {'1': 'getVirtualChainFromBlockRequest', '3': 1029, '4': 1, '5': 11, '6': '.protowire.GetVirtualChainFromBlockRequestMessage', '9': 0, '10': 'getVirtualChainFromBlockRequest'},
    {'1': 'getBlocksRequest', '3': 1031, '4': 1, '5': 11, '6': '.protowire.GetBlocksRequestMessage', '9': 0, '10': 'getBlocksRequest'},
    {'1': 'getBlockCountRequest', '3': 1033, '4': 1, '5': 11, '6': '.protowire.GetBlockCountRequestMessage', '9': 0, '10': 'getBlockCountRequest'},
    {'1': 'getBlockDagInfoRequest', '3': 1035, '4': 1, '5': 11, '6': '.protowire.GetBlockDagInfoRequestMessage', '9': 0, '10': 'getBlockDagInfoRequest'},
    {'1': 'resolveFinalityConflictRequest', '3': 1037, '4': 1, '5': 11, '6': '.protowire.ResolveFinalityConflictRequestMessage', '9': 0, '10': 'resolveFinalityConflictRequest'},
    {'1': 'notifyFinalityConflictRequest', '3': 1039, '4': 1, '5': 11, '6': '.protowire.NotifyFinalityConflictRequestMessage', '9': 0, '10': 'notifyFinalityConflictRequest'},
    {'1': 'getMempoolEntriesRequest', '3': 1043, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntriesRequestMessage', '9': 0, '10': 'getMempoolEntriesRequest'},
    {'1': 'shutdownRequest', '3': 1045, '4': 1, '5': 11, '6': '.protowire.ShutdownRequestMessage', '9': 0, '10': 'shutdownRequest'},
    {'1': 'getHeadersRequest', '3': 1047, '4': 1, '5': 11, '6': '.protowire.GetHeadersRequestMessage', '9': 0, '10': 'getHeadersRequest'},
    {'1': 'notifyUtxosChangedRequest', '3': 1049, '4': 1, '5': 11, '6': '.protowire.NotifyUtxosChangedRequestMessage', '9': 0, '10': 'notifyUtxosChangedRequest'},
    {'1': 'getUtxosByAddressesRequest', '3': 1052, '4': 1, '5': 11, '6': '.protowire.GetUtxosByAddressesRequestMessage', '9': 0, '10': 'getUtxosByAddressesRequest'},
    {'1': 'getSinkBlueScoreRequest', '3': 1054, '4': 1, '5': 11, '6': '.protowire.GetSinkBlueScoreRequestMessage', '9': 0, '10': 'getSinkBlueScoreRequest'},
    {'1': 'notifySinkBlueScoreChangedRequest', '3': 1056, '4': 1, '5': 11, '6': '.protowire.NotifySinkBlueScoreChangedRequestMessage', '9': 0, '10': 'notifySinkBlueScoreChangedRequest'},
    {'1': 'banRequest', '3': 1059, '4': 1, '5': 11, '6': '.protowire.BanRequestMessage', '9': 0, '10': 'banRequest'},
    {'1': 'unbanRequest', '3': 1061, '4': 1, '5': 11, '6': '.protowire.UnbanRequestMessage', '9': 0, '10': 'unbanRequest'},
    {'1': 'getInfoRequest', '3': 1063, '4': 1, '5': 11, '6': '.protowire.GetInfoRequestMessage', '9': 0, '10': 'getInfoRequest'},
    {'1': 'stopNotifyingUtxosChangedRequest', '3': 1065, '4': 1, '5': 11, '6': '.protowire.StopNotifyingUtxosChangedRequestMessage', '9': 0, '10': 'stopNotifyingUtxosChangedRequest'},
    {'1': 'notifyPruningPointUtxoSetOverrideRequest', '3': 1067, '4': 1, '5': 11, '6': '.protowire.NotifyPruningPointUtxoSetOverrideRequestMessage', '9': 0, '10': 'notifyPruningPointUtxoSetOverrideRequest'},
    {'1': 'stopNotifyingPruningPointUtxoSetOverrideRequest', '3': 1070, '4': 1, '5': 11, '6': '.protowire.StopNotifyingPruningPointUtxoSetOverrideRequestMessage', '9': 0, '10': 'stopNotifyingPruningPointUtxoSetOverrideRequest'},
    {'1': 'estimateNetworkHashesPerSecondRequest', '3': 1072, '4': 1, '5': 11, '6': '.protowire.EstimateNetworkHashesPerSecondRequestMessage', '9': 0, '10': 'estimateNetworkHashesPerSecondRequest'},
    {'1': 'notifyVirtualDaaScoreChangedRequest', '3': 1074, '4': 1, '5': 11, '6': '.protowire.NotifyVirtualDaaScoreChangedRequestMessage', '9': 0, '10': 'notifyVirtualDaaScoreChangedRequest'},
    {'1': 'getBalanceByAddressRequest', '3': 1077, '4': 1, '5': 11, '6': '.protowire.GetBalanceByAddressRequestMessage', '9': 0, '10': 'getBalanceByAddressRequest'},
    {'1': 'getBalancesByAddressesRequest', '3': 1079, '4': 1, '5': 11, '6': '.protowire.GetBalancesByAddressesRequestMessage', '9': 0, '10': 'getBalancesByAddressesRequest'},
    {'1': 'notifyNewBlockTemplateRequest', '3': 1081, '4': 1, '5': 11, '6': '.protowire.NotifyNewBlockTemplateRequestMessage', '9': 0, '10': 'notifyNewBlockTemplateRequest'},
    {'1': 'getMempoolEntriesByAddressesRequest', '3': 1084, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntriesByAddressesRequestMessage', '9': 0, '10': 'getMempoolEntriesByAddressesRequest'},
    {'1': 'getCoinSupplyRequest', '3': 1086, '4': 1, '5': 11, '6': '.protowire.GetCoinSupplyRequestMessage', '9': 0, '10': 'getCoinSupplyRequest'},
    {'1': 'pingRequest', '3': 1088, '4': 1, '5': 11, '6': '.protowire.PingRequestMessage', '9': 0, '10': 'pingRequest'},
    {'1': 'getMetricsRequest', '3': 1090, '4': 1, '5': 11, '6': '.protowire.GetMetricsRequestMessage', '9': 0, '10': 'getMetricsRequest'},
    {'1': 'getServerInfoRequest', '3': 1092, '4': 1, '5': 11, '6': '.protowire.GetServerInfoRequestMessage', '9': 0, '10': 'getServerInfoRequest'},
    {'1': 'getSyncStatusRequest', '3': 1094, '4': 1, '5': 11, '6': '.protowire.GetSyncStatusRequestMessage', '9': 0, '10': 'getSyncStatusRequest'},
    {'1': 'getDaaScoreTimestampEstimateRequest', '3': 1096, '4': 1, '5': 11, '6': '.protowire.GetDaaScoreTimestampEstimateRequestMessage', '9': 0, '10': 'getDaaScoreTimestampEstimateRequest'},
    {'1': 'submitTransactionReplacementRequest', '3': 1100, '4': 1, '5': 11, '6': '.protowire.SubmitTransactionReplacementRequestMessage', '9': 0, '10': 'submitTransactionReplacementRequest'},
    {'1': 'getConnectionsRequest', '3': 1102, '4': 1, '5': 11, '6': '.protowire.GetConnectionsRequestMessage', '9': 0, '10': 'getConnectionsRequest'},
    {'1': 'getSystemInfoRequest', '3': 1104, '4': 1, '5': 11, '6': '.protowire.GetSystemInfoRequestMessage', '9': 0, '10': 'getSystemInfoRequest'},
    {'1': 'getFeeEstimateRequest', '3': 1106, '4': 1, '5': 11, '6': '.protowire.GetFeeEstimateRequestMessage', '9': 0, '10': 'getFeeEstimateRequest'},
    {'1': 'getFeeEstimateExperimentalRequest', '3': 1108, '4': 1, '5': 11, '6': '.protowire.GetFeeEstimateExperimentalRequestMessage', '9': 0, '10': 'getFeeEstimateExperimentalRequest'},
    {'1': 'getCurrentBlockColorRequest', '3': 1110, '4': 1, '5': 11, '6': '.protowire.GetCurrentBlockColorRequestMessage', '9': 0, '10': 'getCurrentBlockColorRequest'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `SpectredRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spectredRequestDescriptor = $convert.base64Decode(
    'Cg9TcGVjdHJlZFJlcXVlc3QSDgoCaWQYZSABKARSAmlkEmkKGGdldEN1cnJlbnROZXR3b3JrUm'
    'VxdWVzdBjpByABKAsyKi5wcm90b3dpcmUuR2V0Q3VycmVudE5ldHdvcmtSZXF1ZXN0TWVzc2Fn'
    'ZUgAUhhnZXRDdXJyZW50TmV0d29ya1JlcXVlc3QSVwoSc3VibWl0QmxvY2tSZXF1ZXN0GOsHIA'
    'EoCzIkLnByb3Rvd2lyZS5TdWJtaXRCbG9ja1JlcXVlc3RNZXNzYWdlSABSEnN1Ym1pdEJsb2Nr'
    'UmVxdWVzdBJmChdnZXRCbG9ja1RlbXBsYXRlUmVxdWVzdBjtByABKAsyKS5wcm90b3dpcmUuR2'
    'V0QmxvY2tUZW1wbGF0ZVJlcXVlc3RNZXNzYWdlSABSF2dldEJsb2NrVGVtcGxhdGVSZXF1ZXN0'
    'EmYKF25vdGlmeUJsb2NrQWRkZWRSZXF1ZXN0GO8HIAEoCzIpLnByb3Rvd2lyZS5Ob3RpZnlCbG'
    '9ja0FkZGVkUmVxdWVzdE1lc3NhZ2VIAFIXbm90aWZ5QmxvY2tBZGRlZFJlcXVlc3QSZgoXZ2V0'
    'UGVlckFkZHJlc3Nlc1JlcXVlc3QY8gcgASgLMikucHJvdG93aXJlLkdldFBlZXJBZGRyZXNzZX'
    'NSZXF1ZXN0TWVzc2FnZUgAUhdnZXRQZWVyQWRkcmVzc2VzUmVxdWVzdBJLCg5HZXRTaW5rUmVx'
    'dWVzdBj0ByABKAsyIC5wcm90b3dpcmUuR2V0U2lua1JlcXVlc3RNZXNzYWdlSABSDkdldFNpbm'
    'tSZXF1ZXN0EmMKFmdldE1lbXBvb2xFbnRyeVJlcXVlc3QY9gcgASgLMigucHJvdG93aXJlLkdl'
    'dE1lbXBvb2xFbnRyeVJlcXVlc3RNZXNzYWdlSABSFmdldE1lbXBvb2xFbnRyeVJlcXVlc3QScg'
    'obZ2V0Q29ubmVjdGVkUGVlckluZm9SZXF1ZXN0GPgHIAEoCzItLnByb3Rvd2lyZS5HZXRDb25u'
    'ZWN0ZWRQZWVySW5mb1JlcXVlc3RNZXNzYWdlSABSG2dldENvbm5lY3RlZFBlZXJJbmZvUmVxdW'
    'VzdBJLCg5hZGRQZWVyUmVxdWVzdBj6ByABKAsyIC5wcm90b3dpcmUuQWRkUGVlclJlcXVlc3RN'
    'ZXNzYWdlSABSDmFkZFBlZXJSZXF1ZXN0EmkKGHN1Ym1pdFRyYW5zYWN0aW9uUmVxdWVzdBj8By'
    'ABKAsyKi5wcm90b3dpcmUuU3VibWl0VHJhbnNhY3Rpb25SZXF1ZXN0TWVzc2FnZUgAUhhzdWJt'
    'aXRUcmFuc2FjdGlvblJlcXVlc3QSgQEKIG5vdGlmeVZpcnR1YWxDaGFpbkNoYW5nZWRSZXF1ZX'
    'N0GP4HIAEoCzIyLnByb3Rvd2lyZS5Ob3RpZnlWaXJ0dWFsQ2hhaW5DaGFuZ2VkUmVxdWVzdE1l'
    'c3NhZ2VIAFIgbm90aWZ5VmlydHVhbENoYWluQ2hhbmdlZFJlcXVlc3QSTgoPZ2V0QmxvY2tSZX'
    'F1ZXN0GIEIIAEoCzIhLnByb3Rvd2lyZS5HZXRCbG9ja1JlcXVlc3RNZXNzYWdlSABSD2dldEJs'
    'b2NrUmVxdWVzdBJdChRnZXRTdWJuZXR3b3JrUmVxdWVzdBiDCCABKAsyJi5wcm90b3dpcmUuR2'
    'V0U3VibmV0d29ya1JlcXVlc3RNZXNzYWdlSABSFGdldFN1Ym5ldHdvcmtSZXF1ZXN0En4KH2dl'
    'dFZpcnR1YWxDaGFpbkZyb21CbG9ja1JlcXVlc3QYhQggASgLMjEucHJvdG93aXJlLkdldFZpcn'
    'R1YWxDaGFpbkZyb21CbG9ja1JlcXVlc3RNZXNzYWdlSABSH2dldFZpcnR1YWxDaGFpbkZyb21C'
    'bG9ja1JlcXVlc3QSUQoQZ2V0QmxvY2tzUmVxdWVzdBiHCCABKAsyIi5wcm90b3dpcmUuR2V0Qm'
    'xvY2tzUmVxdWVzdE1lc3NhZ2VIAFIQZ2V0QmxvY2tzUmVxdWVzdBJdChRnZXRCbG9ja0NvdW50'
    'UmVxdWVzdBiJCCABKAsyJi5wcm90b3dpcmUuR2V0QmxvY2tDb3VudFJlcXVlc3RNZXNzYWdlSA'
    'BSFGdldEJsb2NrQ291bnRSZXF1ZXN0EmMKFmdldEJsb2NrRGFnSW5mb1JlcXVlc3QYiwggASgL'
    'MigucHJvdG93aXJlLkdldEJsb2NrRGFnSW5mb1JlcXVlc3RNZXNzYWdlSABSFmdldEJsb2NrRG'
    'FnSW5mb1JlcXVlc3QSewoecmVzb2x2ZUZpbmFsaXR5Q29uZmxpY3RSZXF1ZXN0GI0IIAEoCzIw'
    'LnByb3Rvd2lyZS5SZXNvbHZlRmluYWxpdHlDb25mbGljdFJlcXVlc3RNZXNzYWdlSABSHnJlc2'
    '9sdmVGaW5hbGl0eUNvbmZsaWN0UmVxdWVzdBJ4Ch1ub3RpZnlGaW5hbGl0eUNvbmZsaWN0UmVx'
    'dWVzdBiPCCABKAsyLy5wcm90b3dpcmUuTm90aWZ5RmluYWxpdHlDb25mbGljdFJlcXVlc3RNZX'
    'NzYWdlSABSHW5vdGlmeUZpbmFsaXR5Q29uZmxpY3RSZXF1ZXN0EmkKGGdldE1lbXBvb2xFbnRy'
    'aWVzUmVxdWVzdBiTCCABKAsyKi5wcm90b3dpcmUuR2V0TWVtcG9vbEVudHJpZXNSZXF1ZXN0TW'
    'Vzc2FnZUgAUhhnZXRNZW1wb29sRW50cmllc1JlcXVlc3QSTgoPc2h1dGRvd25SZXF1ZXN0GJUI'
    'IAEoCzIhLnByb3Rvd2lyZS5TaHV0ZG93blJlcXVlc3RNZXNzYWdlSABSD3NodXRkb3duUmVxdW'
    'VzdBJUChFnZXRIZWFkZXJzUmVxdWVzdBiXCCABKAsyIy5wcm90b3dpcmUuR2V0SGVhZGVyc1Jl'
    'cXVlc3RNZXNzYWdlSABSEWdldEhlYWRlcnNSZXF1ZXN0EmwKGW5vdGlmeVV0eG9zQ2hhbmdlZF'
    'JlcXVlc3QYmQggASgLMisucHJvdG93aXJlLk5vdGlmeVV0eG9zQ2hhbmdlZFJlcXVlc3RNZXNz'
    'YWdlSABSGW5vdGlmeVV0eG9zQ2hhbmdlZFJlcXVlc3QSbwoaZ2V0VXR4b3NCeUFkZHJlc3Nlc1'
    'JlcXVlc3QYnAggASgLMiwucHJvdG93aXJlLkdldFV0eG9zQnlBZGRyZXNzZXNSZXF1ZXN0TWVz'
    'c2FnZUgAUhpnZXRVdHhvc0J5QWRkcmVzc2VzUmVxdWVzdBJmChdnZXRTaW5rQmx1ZVNjb3JlUm'
    'VxdWVzdBieCCABKAsyKS5wcm90b3dpcmUuR2V0U2lua0JsdWVTY29yZVJlcXVlc3RNZXNzYWdl'
    'SABSF2dldFNpbmtCbHVlU2NvcmVSZXF1ZXN0EoQBCiFub3RpZnlTaW5rQmx1ZVNjb3JlQ2hhbm'
    'dlZFJlcXVlc3QYoAggASgLMjMucHJvdG93aXJlLk5vdGlmeVNpbmtCbHVlU2NvcmVDaGFuZ2Vk'
    'UmVxdWVzdE1lc3NhZ2VIAFIhbm90aWZ5U2lua0JsdWVTY29yZUNoYW5nZWRSZXF1ZXN0Ej8KCm'
    'JhblJlcXVlc3QYowggASgLMhwucHJvdG93aXJlLkJhblJlcXVlc3RNZXNzYWdlSABSCmJhblJl'
    'cXVlc3QSRQoMdW5iYW5SZXF1ZXN0GKUIIAEoCzIeLnByb3Rvd2lyZS5VbmJhblJlcXVlc3RNZX'
    'NzYWdlSABSDHVuYmFuUmVxdWVzdBJLCg5nZXRJbmZvUmVxdWVzdBinCCABKAsyIC5wcm90b3dp'
    'cmUuR2V0SW5mb1JlcXVlc3RNZXNzYWdlSABSDmdldEluZm9SZXF1ZXN0EoEBCiBzdG9wTm90aW'
    'Z5aW5nVXR4b3NDaGFuZ2VkUmVxdWVzdBipCCABKAsyMi5wcm90b3dpcmUuU3RvcE5vdGlmeWlu'
    'Z1V0eG9zQ2hhbmdlZFJlcXVlc3RNZXNzYWdlSABSIHN0b3BOb3RpZnlpbmdVdHhvc0NoYW5nZW'
    'RSZXF1ZXN0EpkBCihub3RpZnlQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXF1ZXN0GKsI'
    'IAEoCzI6LnByb3Rvd2lyZS5Ob3RpZnlQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXF1ZX'
    'N0TWVzc2FnZUgAUihub3RpZnlQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXF1ZXN0Eq4B'
    'Ci9zdG9wTm90aWZ5aW5nUHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVxdWVzdBiuCCABKA'
    'syQS5wcm90b3dpcmUuU3RvcE5vdGlmeWluZ1BydW5pbmdQb2ludFV0eG9TZXRPdmVycmlkZVJl'
    'cXVlc3RNZXNzYWdlSABSL3N0b3BOb3RpZnlpbmdQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZG'
    'VSZXF1ZXN0EpABCiVlc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXF1ZXN0GLAIIAEo'
    'CzI3LnByb3Rvd2lyZS5Fc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXF1ZXN0TWVzc2'
    'FnZUgAUiVlc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXF1ZXN0EooBCiNub3RpZnlW'
    'aXJ0dWFsRGFhU2NvcmVDaGFuZ2VkUmVxdWVzdBiyCCABKAsyNS5wcm90b3dpcmUuTm90aWZ5Vm'
    'lydHVhbERhYVNjb3JlQ2hhbmdlZFJlcXVlc3RNZXNzYWdlSABSI25vdGlmeVZpcnR1YWxEYWFT'
    'Y29yZUNoYW5nZWRSZXF1ZXN0Em8KGmdldEJhbGFuY2VCeUFkZHJlc3NSZXF1ZXN0GLUIIAEoCz'
    'IsLnByb3Rvd2lyZS5HZXRCYWxhbmNlQnlBZGRyZXNzUmVxdWVzdE1lc3NhZ2VIAFIaZ2V0QmFs'
    'YW5jZUJ5QWRkcmVzc1JlcXVlc3QSeAodZ2V0QmFsYW5jZXNCeUFkZHJlc3Nlc1JlcXVlc3QYtw'
    'ggASgLMi8ucHJvdG93aXJlLkdldEJhbGFuY2VzQnlBZGRyZXNzZXNSZXF1ZXN0TWVzc2FnZUgA'
    'Uh1nZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVxdWVzdBJ4Ch1ub3RpZnlOZXdCbG9ja1RlbXBsYX'
    'RlUmVxdWVzdBi5CCABKAsyLy5wcm90b3dpcmUuTm90aWZ5TmV3QmxvY2tUZW1wbGF0ZVJlcXVl'
    'c3RNZXNzYWdlSABSHW5vdGlmeU5ld0Jsb2NrVGVtcGxhdGVSZXF1ZXN0EooBCiNnZXRNZW1wb2'
    '9sRW50cmllc0J5QWRkcmVzc2VzUmVxdWVzdBi8CCABKAsyNS5wcm90b3dpcmUuR2V0TWVtcG9v'
    'bEVudHJpZXNCeUFkZHJlc3Nlc1JlcXVlc3RNZXNzYWdlSABSI2dldE1lbXBvb2xFbnRyaWVzQn'
    'lBZGRyZXNzZXNSZXF1ZXN0El0KFGdldENvaW5TdXBwbHlSZXF1ZXN0GL4IIAEoCzImLnByb3Rv'
    'd2lyZS5HZXRDb2luU3VwcGx5UmVxdWVzdE1lc3NhZ2VIAFIUZ2V0Q29pblN1cHBseVJlcXVlc3'
    'QSQgoLcGluZ1JlcXVlc3QYwAggASgLMh0ucHJvdG93aXJlLlBpbmdSZXF1ZXN0TWVzc2FnZUgA'
    'UgtwaW5nUmVxdWVzdBJUChFnZXRNZXRyaWNzUmVxdWVzdBjCCCABKAsyIy5wcm90b3dpcmUuR2'
    'V0TWV0cmljc1JlcXVlc3RNZXNzYWdlSABSEWdldE1ldHJpY3NSZXF1ZXN0El0KFGdldFNlcnZl'
    'ckluZm9SZXF1ZXN0GMQIIAEoCzImLnByb3Rvd2lyZS5HZXRTZXJ2ZXJJbmZvUmVxdWVzdE1lc3'
    'NhZ2VIAFIUZ2V0U2VydmVySW5mb1JlcXVlc3QSXQoUZ2V0U3luY1N0YXR1c1JlcXVlc3QYxggg'
    'ASgLMiYucHJvdG93aXJlLkdldFN5bmNTdGF0dXNSZXF1ZXN0TWVzc2FnZUgAUhRnZXRTeW5jU3'
    'RhdHVzUmVxdWVzdBKKAQojZ2V0RGFhU2NvcmVUaW1lc3RhbXBFc3RpbWF0ZVJlcXVlc3QYyAgg'
    'ASgLMjUucHJvdG93aXJlLkdldERhYVNjb3JlVGltZXN0YW1wRXN0aW1hdGVSZXF1ZXN0TWVzc2'
    'FnZUgAUiNnZXREYWFTY29yZVRpbWVzdGFtcEVzdGltYXRlUmVxdWVzdBKKAQojc3VibWl0VHJh'
    'bnNhY3Rpb25SZXBsYWNlbWVudFJlcXVlc3QYzAggASgLMjUucHJvdG93aXJlLlN1Ym1pdFRyYW'
    '5zYWN0aW9uUmVwbGFjZW1lbnRSZXF1ZXN0TWVzc2FnZUgAUiNzdWJtaXRUcmFuc2FjdGlvblJl'
    'cGxhY2VtZW50UmVxdWVzdBJgChVnZXRDb25uZWN0aW9uc1JlcXVlc3QYzgggASgLMicucHJvdG'
    '93aXJlLkdldENvbm5lY3Rpb25zUmVxdWVzdE1lc3NhZ2VIAFIVZ2V0Q29ubmVjdGlvbnNSZXF1'
    'ZXN0El0KFGdldFN5c3RlbUluZm9SZXF1ZXN0GNAIIAEoCzImLnByb3Rvd2lyZS5HZXRTeXN0ZW'
    '1JbmZvUmVxdWVzdE1lc3NhZ2VIAFIUZ2V0U3lzdGVtSW5mb1JlcXVlc3QSYAoVZ2V0RmVlRXN0'
    'aW1hdGVSZXF1ZXN0GNIIIAEoCzInLnByb3Rvd2lyZS5HZXRGZWVFc3RpbWF0ZVJlcXVlc3RNZX'
    'NzYWdlSABSFWdldEZlZUVzdGltYXRlUmVxdWVzdBKEAQohZ2V0RmVlRXN0aW1hdGVFeHBlcmlt'
    'ZW50YWxSZXF1ZXN0GNQIIAEoCzIzLnByb3Rvd2lyZS5HZXRGZWVFc3RpbWF0ZUV4cGVyaW1lbn'
    'RhbFJlcXVlc3RNZXNzYWdlSABSIWdldEZlZUVzdGltYXRlRXhwZXJpbWVudGFsUmVxdWVzdBJy'
    'ChtnZXRDdXJyZW50QmxvY2tDb2xvclJlcXVlc3QY1gggASgLMi0ucHJvdG93aXJlLkdldEN1cn'
    'JlbnRCbG9ja0NvbG9yUmVxdWVzdE1lc3NhZ2VIAFIbZ2V0Q3VycmVudEJsb2NrQ29sb3JSZXF1'
    'ZXN0QgkKB3BheWxvYWQ=');

@$core.Deprecated('Use spectredResponseDescriptor instead')
const SpectredResponse$json = {
  '1': 'SpectredResponse',
  '2': [
    {'1': 'id', '3': 101, '4': 1, '5': 4, '10': 'id'},
    {'1': 'getCurrentNetworkResponse', '3': 1002, '4': 1, '5': 11, '6': '.protowire.GetCurrentNetworkResponseMessage', '9': 0, '10': 'getCurrentNetworkResponse'},
    {'1': 'submitBlockResponse', '3': 1004, '4': 1, '5': 11, '6': '.protowire.SubmitBlockResponseMessage', '9': 0, '10': 'submitBlockResponse'},
    {'1': 'getBlockTemplateResponse', '3': 1006, '4': 1, '5': 11, '6': '.protowire.GetBlockTemplateResponseMessage', '9': 0, '10': 'getBlockTemplateResponse'},
    {'1': 'notifyBlockAddedResponse', '3': 1008, '4': 1, '5': 11, '6': '.protowire.NotifyBlockAddedResponseMessage', '9': 0, '10': 'notifyBlockAddedResponse'},
    {'1': 'blockAddedNotification', '3': 1009, '4': 1, '5': 11, '6': '.protowire.BlockAddedNotificationMessage', '9': 0, '10': 'blockAddedNotification'},
    {'1': 'getPeerAddressesResponse', '3': 1011, '4': 1, '5': 11, '6': '.protowire.GetPeerAddressesResponseMessage', '9': 0, '10': 'getPeerAddressesResponse'},
    {'1': 'GetSinkResponse', '3': 1013, '4': 1, '5': 11, '6': '.protowire.GetSinkResponseMessage', '9': 0, '10': 'GetSinkResponse'},
    {'1': 'getMempoolEntryResponse', '3': 1015, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntryResponseMessage', '9': 0, '10': 'getMempoolEntryResponse'},
    {'1': 'getConnectedPeerInfoResponse', '3': 1017, '4': 1, '5': 11, '6': '.protowire.GetConnectedPeerInfoResponseMessage', '9': 0, '10': 'getConnectedPeerInfoResponse'},
    {'1': 'addPeerResponse', '3': 1019, '4': 1, '5': 11, '6': '.protowire.AddPeerResponseMessage', '9': 0, '10': 'addPeerResponse'},
    {'1': 'submitTransactionResponse', '3': 1021, '4': 1, '5': 11, '6': '.protowire.SubmitTransactionResponseMessage', '9': 0, '10': 'submitTransactionResponse'},
    {'1': 'notifyVirtualChainChangedResponse', '3': 1023, '4': 1, '5': 11, '6': '.protowire.NotifyVirtualChainChangedResponseMessage', '9': 0, '10': 'notifyVirtualChainChangedResponse'},
    {'1': 'virtualChainChangedNotification', '3': 1024, '4': 1, '5': 11, '6': '.protowire.VirtualChainChangedNotificationMessage', '9': 0, '10': 'virtualChainChangedNotification'},
    {'1': 'getBlockResponse', '3': 1026, '4': 1, '5': 11, '6': '.protowire.GetBlockResponseMessage', '9': 0, '10': 'getBlockResponse'},
    {'1': 'getSubnetworkResponse', '3': 1028, '4': 1, '5': 11, '6': '.protowire.GetSubnetworkResponseMessage', '9': 0, '10': 'getSubnetworkResponse'},
    {'1': 'getVirtualChainFromBlockResponse', '3': 1030, '4': 1, '5': 11, '6': '.protowire.GetVirtualChainFromBlockResponseMessage', '9': 0, '10': 'getVirtualChainFromBlockResponse'},
    {'1': 'getBlocksResponse', '3': 1032, '4': 1, '5': 11, '6': '.protowire.GetBlocksResponseMessage', '9': 0, '10': 'getBlocksResponse'},
    {'1': 'getBlockCountResponse', '3': 1034, '4': 1, '5': 11, '6': '.protowire.GetBlockCountResponseMessage', '9': 0, '10': 'getBlockCountResponse'},
    {'1': 'getBlockDagInfoResponse', '3': 1036, '4': 1, '5': 11, '6': '.protowire.GetBlockDagInfoResponseMessage', '9': 0, '10': 'getBlockDagInfoResponse'},
    {'1': 'resolveFinalityConflictResponse', '3': 1038, '4': 1, '5': 11, '6': '.protowire.ResolveFinalityConflictResponseMessage', '9': 0, '10': 'resolveFinalityConflictResponse'},
    {'1': 'notifyFinalityConflictResponse', '3': 1040, '4': 1, '5': 11, '6': '.protowire.NotifyFinalityConflictResponseMessage', '9': 0, '10': 'notifyFinalityConflictResponse'},
    {'1': 'finalityConflictNotification', '3': 1041, '4': 1, '5': 11, '6': '.protowire.FinalityConflictNotificationMessage', '9': 0, '10': 'finalityConflictNotification'},
    {'1': 'finalityConflictResolvedNotification', '3': 1042, '4': 1, '5': 11, '6': '.protowire.FinalityConflictResolvedNotificationMessage', '9': 0, '10': 'finalityConflictResolvedNotification'},
    {'1': 'getMempoolEntriesResponse', '3': 1044, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntriesResponseMessage', '9': 0, '10': 'getMempoolEntriesResponse'},
    {'1': 'shutdownResponse', '3': 1046, '4': 1, '5': 11, '6': '.protowire.ShutdownResponseMessage', '9': 0, '10': 'shutdownResponse'},
    {'1': 'getHeadersResponse', '3': 1048, '4': 1, '5': 11, '6': '.protowire.GetHeadersResponseMessage', '9': 0, '10': 'getHeadersResponse'},
    {'1': 'notifyUtxosChangedResponse', '3': 1050, '4': 1, '5': 11, '6': '.protowire.NotifyUtxosChangedResponseMessage', '9': 0, '10': 'notifyUtxosChangedResponse'},
    {'1': 'utxosChangedNotification', '3': 1051, '4': 1, '5': 11, '6': '.protowire.UtxosChangedNotificationMessage', '9': 0, '10': 'utxosChangedNotification'},
    {'1': 'getUtxosByAddressesResponse', '3': 1053, '4': 1, '5': 11, '6': '.protowire.GetUtxosByAddressesResponseMessage', '9': 0, '10': 'getUtxosByAddressesResponse'},
    {'1': 'getSinkBlueScoreResponse', '3': 1055, '4': 1, '5': 11, '6': '.protowire.GetSinkBlueScoreResponseMessage', '9': 0, '10': 'getSinkBlueScoreResponse'},
    {'1': 'notifySinkBlueScoreChangedResponse', '3': 1057, '4': 1, '5': 11, '6': '.protowire.NotifySinkBlueScoreChangedResponseMessage', '9': 0, '10': 'notifySinkBlueScoreChangedResponse'},
    {'1': 'sinkBlueScoreChangedNotification', '3': 1058, '4': 1, '5': 11, '6': '.protowire.SinkBlueScoreChangedNotificationMessage', '9': 0, '10': 'sinkBlueScoreChangedNotification'},
    {'1': 'banResponse', '3': 1060, '4': 1, '5': 11, '6': '.protowire.BanResponseMessage', '9': 0, '10': 'banResponse'},
    {'1': 'unbanResponse', '3': 1062, '4': 1, '5': 11, '6': '.protowire.UnbanResponseMessage', '9': 0, '10': 'unbanResponse'},
    {'1': 'getInfoResponse', '3': 1064, '4': 1, '5': 11, '6': '.protowire.GetInfoResponseMessage', '9': 0, '10': 'getInfoResponse'},
    {'1': 'stopNotifyingUtxosChangedResponse', '3': 1066, '4': 1, '5': 11, '6': '.protowire.StopNotifyingUtxosChangedResponseMessage', '9': 0, '10': 'stopNotifyingUtxosChangedResponse'},
    {'1': 'notifyPruningPointUtxoSetOverrideResponse', '3': 1068, '4': 1, '5': 11, '6': '.protowire.NotifyPruningPointUtxoSetOverrideResponseMessage', '9': 0, '10': 'notifyPruningPointUtxoSetOverrideResponse'},
    {'1': 'pruningPointUtxoSetOverrideNotification', '3': 1069, '4': 1, '5': 11, '6': '.protowire.PruningPointUtxoSetOverrideNotificationMessage', '9': 0, '10': 'pruningPointUtxoSetOverrideNotification'},
    {'1': 'stopNotifyingPruningPointUtxoSetOverrideResponse', '3': 1071, '4': 1, '5': 11, '6': '.protowire.StopNotifyingPruningPointUtxoSetOverrideResponseMessage', '9': 0, '10': 'stopNotifyingPruningPointUtxoSetOverrideResponse'},
    {'1': 'estimateNetworkHashesPerSecondResponse', '3': 1073, '4': 1, '5': 11, '6': '.protowire.EstimateNetworkHashesPerSecondResponseMessage', '9': 0, '10': 'estimateNetworkHashesPerSecondResponse'},
    {'1': 'notifyVirtualDaaScoreChangedResponse', '3': 1075, '4': 1, '5': 11, '6': '.protowire.NotifyVirtualDaaScoreChangedResponseMessage', '9': 0, '10': 'notifyVirtualDaaScoreChangedResponse'},
    {'1': 'virtualDaaScoreChangedNotification', '3': 1076, '4': 1, '5': 11, '6': '.protowire.VirtualDaaScoreChangedNotificationMessage', '9': 0, '10': 'virtualDaaScoreChangedNotification'},
    {'1': 'getBalanceByAddressResponse', '3': 1078, '4': 1, '5': 11, '6': '.protowire.GetBalanceByAddressResponseMessage', '9': 0, '10': 'getBalanceByAddressResponse'},
    {'1': 'getBalancesByAddressesResponse', '3': 1080, '4': 1, '5': 11, '6': '.protowire.GetBalancesByAddressesResponseMessage', '9': 0, '10': 'getBalancesByAddressesResponse'},
    {'1': 'notifyNewBlockTemplateResponse', '3': 1082, '4': 1, '5': 11, '6': '.protowire.NotifyNewBlockTemplateResponseMessage', '9': 0, '10': 'notifyNewBlockTemplateResponse'},
    {'1': 'newBlockTemplateNotification', '3': 1083, '4': 1, '5': 11, '6': '.protowire.NewBlockTemplateNotificationMessage', '9': 0, '10': 'newBlockTemplateNotification'},
    {'1': 'getMempoolEntriesByAddressesResponse', '3': 1085, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntriesByAddressesResponseMessage', '9': 0, '10': 'getMempoolEntriesByAddressesResponse'},
    {'1': 'getCoinSupplyResponse', '3': 1087, '4': 1, '5': 11, '6': '.protowire.GetCoinSupplyResponseMessage', '9': 0, '10': 'getCoinSupplyResponse'},
    {'1': 'pingResponse', '3': 1089, '4': 1, '5': 11, '6': '.protowire.PingResponseMessage', '9': 0, '10': 'pingResponse'},
    {'1': 'getMetricsResponse', '3': 1091, '4': 1, '5': 11, '6': '.protowire.GetMetricsResponseMessage', '9': 0, '10': 'getMetricsResponse'},
    {'1': 'getServerInfoResponse', '3': 1093, '4': 1, '5': 11, '6': '.protowire.GetServerInfoResponseMessage', '9': 0, '10': 'getServerInfoResponse'},
    {'1': 'getSyncStatusResponse', '3': 1095, '4': 1, '5': 11, '6': '.protowire.GetSyncStatusResponseMessage', '9': 0, '10': 'getSyncStatusResponse'},
    {'1': 'getDaaScoreTimestampEstimateResponse', '3': 1097, '4': 1, '5': 11, '6': '.protowire.GetDaaScoreTimestampEstimateResponseMessage', '9': 0, '10': 'getDaaScoreTimestampEstimateResponse'},
    {'1': 'submitTransactionReplacementResponse', '3': 1101, '4': 1, '5': 11, '6': '.protowire.SubmitTransactionReplacementResponseMessage', '9': 0, '10': 'submitTransactionReplacementResponse'},
    {'1': 'getConnectionsResponse', '3': 1103, '4': 1, '5': 11, '6': '.protowire.GetConnectionsResponseMessage', '9': 0, '10': 'getConnectionsResponse'},
    {'1': 'getSystemInfoResponse', '3': 1105, '4': 1, '5': 11, '6': '.protowire.GetSystemInfoResponseMessage', '9': 0, '10': 'getSystemInfoResponse'},
    {'1': 'getFeeEstimateResponse', '3': 1107, '4': 1, '5': 11, '6': '.protowire.GetFeeEstimateResponseMessage', '9': 0, '10': 'getFeeEstimateResponse'},
    {'1': 'getFeeEstimateExperimentalResponse', '3': 1109, '4': 1, '5': 11, '6': '.protowire.GetFeeEstimateExperimentalResponseMessage', '9': 0, '10': 'getFeeEstimateExperimentalResponse'},
    {'1': 'getCurrentBlockColorResponse', '3': 1111, '4': 1, '5': 11, '6': '.protowire.GetCurrentBlockColorResponseMessage', '9': 0, '10': 'getCurrentBlockColorResponse'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `SpectredResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spectredResponseDescriptor = $convert.base64Decode(
    'ChBTcGVjdHJlZFJlc3BvbnNlEg4KAmlkGGUgASgEUgJpZBJsChlnZXRDdXJyZW50TmV0d29ya1'
    'Jlc3BvbnNlGOoHIAEoCzIrLnByb3Rvd2lyZS5HZXRDdXJyZW50TmV0d29ya1Jlc3BvbnNlTWVz'
    'c2FnZUgAUhlnZXRDdXJyZW50TmV0d29ya1Jlc3BvbnNlEloKE3N1Ym1pdEJsb2NrUmVzcG9uc2'
    'UY7AcgASgLMiUucHJvdG93aXJlLlN1Ym1pdEJsb2NrUmVzcG9uc2VNZXNzYWdlSABSE3N1Ym1p'
    'dEJsb2NrUmVzcG9uc2USaQoYZ2V0QmxvY2tUZW1wbGF0ZVJlc3BvbnNlGO4HIAEoCzIqLnByb3'
    'Rvd2lyZS5HZXRCbG9ja1RlbXBsYXRlUmVzcG9uc2VNZXNzYWdlSABSGGdldEJsb2NrVGVtcGxh'
    'dGVSZXNwb25zZRJpChhub3RpZnlCbG9ja0FkZGVkUmVzcG9uc2UY8AcgASgLMioucHJvdG93aX'
    'JlLk5vdGlmeUJsb2NrQWRkZWRSZXNwb25zZU1lc3NhZ2VIAFIYbm90aWZ5QmxvY2tBZGRlZFJl'
    'c3BvbnNlEmMKFmJsb2NrQWRkZWROb3RpZmljYXRpb24Y8QcgASgLMigucHJvdG93aXJlLkJsb2'
    'NrQWRkZWROb3RpZmljYXRpb25NZXNzYWdlSABSFmJsb2NrQWRkZWROb3RpZmljYXRpb24SaQoY'
    'Z2V0UGVlckFkZHJlc3Nlc1Jlc3BvbnNlGPMHIAEoCzIqLnByb3Rvd2lyZS5HZXRQZWVyQWRkcm'
    'Vzc2VzUmVzcG9uc2VNZXNzYWdlSABSGGdldFBlZXJBZGRyZXNzZXNSZXNwb25zZRJOCg9HZXRT'
    'aW5rUmVzcG9uc2UY9QcgASgLMiEucHJvdG93aXJlLkdldFNpbmtSZXNwb25zZU1lc3NhZ2VIAF'
    'IPR2V0U2lua1Jlc3BvbnNlEmYKF2dldE1lbXBvb2xFbnRyeVJlc3BvbnNlGPcHIAEoCzIpLnBy'
    'b3Rvd2lyZS5HZXRNZW1wb29sRW50cnlSZXNwb25zZU1lc3NhZ2VIAFIXZ2V0TWVtcG9vbEVudH'
    'J5UmVzcG9uc2USdQocZ2V0Q29ubmVjdGVkUGVlckluZm9SZXNwb25zZRj5ByABKAsyLi5wcm90'
    'b3dpcmUuR2V0Q29ubmVjdGVkUGVlckluZm9SZXNwb25zZU1lc3NhZ2VIAFIcZ2V0Q29ubmVjdG'
    'VkUGVlckluZm9SZXNwb25zZRJOCg9hZGRQZWVyUmVzcG9uc2UY+wcgASgLMiEucHJvdG93aXJl'
    'LkFkZFBlZXJSZXNwb25zZU1lc3NhZ2VIAFIPYWRkUGVlclJlc3BvbnNlEmwKGXN1Ym1pdFRyYW'
    '5zYWN0aW9uUmVzcG9uc2UY/QcgASgLMisucHJvdG93aXJlLlN1Ym1pdFRyYW5zYWN0aW9uUmVz'
    'cG9uc2VNZXNzYWdlSABSGXN1Ym1pdFRyYW5zYWN0aW9uUmVzcG9uc2UShAEKIW5vdGlmeVZpcn'
    'R1YWxDaGFpbkNoYW5nZWRSZXNwb25zZRj/ByABKAsyMy5wcm90b3dpcmUuTm90aWZ5VmlydHVh'
    'bENoYWluQ2hhbmdlZFJlc3BvbnNlTWVzc2FnZUgAUiFub3RpZnlWaXJ0dWFsQ2hhaW5DaGFuZ2'
    'VkUmVzcG9uc2USfgofdmlydHVhbENoYWluQ2hhbmdlZE5vdGlmaWNhdGlvbhiACCABKAsyMS5w'
    'cm90b3dpcmUuVmlydHVhbENoYWluQ2hhbmdlZE5vdGlmaWNhdGlvbk1lc3NhZ2VIAFIfdmlydH'
    'VhbENoYWluQ2hhbmdlZE5vdGlmaWNhdGlvbhJRChBnZXRCbG9ja1Jlc3BvbnNlGIIIIAEoCzIi'
    'LnByb3Rvd2lyZS5HZXRCbG9ja1Jlc3BvbnNlTWVzc2FnZUgAUhBnZXRCbG9ja1Jlc3BvbnNlEm'
    'AKFWdldFN1Ym5ldHdvcmtSZXNwb25zZRiECCABKAsyJy5wcm90b3dpcmUuR2V0U3VibmV0d29y'
    'a1Jlc3BvbnNlTWVzc2FnZUgAUhVnZXRTdWJuZXR3b3JrUmVzcG9uc2USgQEKIGdldFZpcnR1YW'
    'xDaGFpbkZyb21CbG9ja1Jlc3BvbnNlGIYIIAEoCzIyLnByb3Rvd2lyZS5HZXRWaXJ0dWFsQ2hh'
    'aW5Gcm9tQmxvY2tSZXNwb25zZU1lc3NhZ2VIAFIgZ2V0VmlydHVhbENoYWluRnJvbUJsb2NrUm'
    'VzcG9uc2USVAoRZ2V0QmxvY2tzUmVzcG9uc2UYiAggASgLMiMucHJvdG93aXJlLkdldEJsb2Nr'
    'c1Jlc3BvbnNlTWVzc2FnZUgAUhFnZXRCbG9ja3NSZXNwb25zZRJgChVnZXRCbG9ja0NvdW50Um'
    'VzcG9uc2UYigggASgLMicucHJvdG93aXJlLkdldEJsb2NrQ291bnRSZXNwb25zZU1lc3NhZ2VI'
    'AFIVZ2V0QmxvY2tDb3VudFJlc3BvbnNlEmYKF2dldEJsb2NrRGFnSW5mb1Jlc3BvbnNlGIwIIA'
    'EoCzIpLnByb3Rvd2lyZS5HZXRCbG9ja0RhZ0luZm9SZXNwb25zZU1lc3NhZ2VIAFIXZ2V0Qmxv'
    'Y2tEYWdJbmZvUmVzcG9uc2USfgofcmVzb2x2ZUZpbmFsaXR5Q29uZmxpY3RSZXNwb25zZRiOCC'
    'ABKAsyMS5wcm90b3dpcmUuUmVzb2x2ZUZpbmFsaXR5Q29uZmxpY3RSZXNwb25zZU1lc3NhZ2VI'
    'AFIfcmVzb2x2ZUZpbmFsaXR5Q29uZmxpY3RSZXNwb25zZRJ7Ch5ub3RpZnlGaW5hbGl0eUNvbm'
    'ZsaWN0UmVzcG9uc2UYkAggASgLMjAucHJvdG93aXJlLk5vdGlmeUZpbmFsaXR5Q29uZmxpY3RS'
    'ZXNwb25zZU1lc3NhZ2VIAFIebm90aWZ5RmluYWxpdHlDb25mbGljdFJlc3BvbnNlEnUKHGZpbm'
    'FsaXR5Q29uZmxpY3ROb3RpZmljYXRpb24YkQggASgLMi4ucHJvdG93aXJlLkZpbmFsaXR5Q29u'
    'ZmxpY3ROb3RpZmljYXRpb25NZXNzYWdlSABSHGZpbmFsaXR5Q29uZmxpY3ROb3RpZmljYXRpb2'
    '4SjQEKJGZpbmFsaXR5Q29uZmxpY3RSZXNvbHZlZE5vdGlmaWNhdGlvbhiSCCABKAsyNi5wcm90'
    'b3dpcmUuRmluYWxpdHlDb25mbGljdFJlc29sdmVkTm90aWZpY2F0aW9uTWVzc2FnZUgAUiRmaW'
    '5hbGl0eUNvbmZsaWN0UmVzb2x2ZWROb3RpZmljYXRpb24SbAoZZ2V0TWVtcG9vbEVudHJpZXNS'
    'ZXNwb25zZRiUCCABKAsyKy5wcm90b3dpcmUuR2V0TWVtcG9vbEVudHJpZXNSZXNwb25zZU1lc3'
    'NhZ2VIAFIZZ2V0TWVtcG9vbEVudHJpZXNSZXNwb25zZRJRChBzaHV0ZG93blJlc3BvbnNlGJYI'
    'IAEoCzIiLnByb3Rvd2lyZS5TaHV0ZG93blJlc3BvbnNlTWVzc2FnZUgAUhBzaHV0ZG93blJlc3'
    'BvbnNlElcKEmdldEhlYWRlcnNSZXNwb25zZRiYCCABKAsyJC5wcm90b3dpcmUuR2V0SGVhZGVy'
    'c1Jlc3BvbnNlTWVzc2FnZUgAUhJnZXRIZWFkZXJzUmVzcG9uc2USbwoabm90aWZ5VXR4b3NDaG'
    'FuZ2VkUmVzcG9uc2UYmgggASgLMiwucHJvdG93aXJlLk5vdGlmeVV0eG9zQ2hhbmdlZFJlc3Bv'
    'bnNlTWVzc2FnZUgAUhpub3RpZnlVdHhvc0NoYW5nZWRSZXNwb25zZRJpChh1dHhvc0NoYW5nZW'
    'ROb3RpZmljYXRpb24YmwggASgLMioucHJvdG93aXJlLlV0eG9zQ2hhbmdlZE5vdGlmaWNhdGlv'
    'bk1lc3NhZ2VIAFIYdXR4b3NDaGFuZ2VkTm90aWZpY2F0aW9uEnIKG2dldFV0eG9zQnlBZGRyZX'
    'NzZXNSZXNwb25zZRidCCABKAsyLS5wcm90b3dpcmUuR2V0VXR4b3NCeUFkZHJlc3Nlc1Jlc3Bv'
    'bnNlTWVzc2FnZUgAUhtnZXRVdHhvc0J5QWRkcmVzc2VzUmVzcG9uc2USaQoYZ2V0U2lua0JsdW'
    'VTY29yZVJlc3BvbnNlGJ8IIAEoCzIqLnByb3Rvd2lyZS5HZXRTaW5rQmx1ZVNjb3JlUmVzcG9u'
    'c2VNZXNzYWdlSABSGGdldFNpbmtCbHVlU2NvcmVSZXNwb25zZRKHAQoibm90aWZ5U2lua0JsdW'
    'VTY29yZUNoYW5nZWRSZXNwb25zZRihCCABKAsyNC5wcm90b3dpcmUuTm90aWZ5U2lua0JsdWVT'
    'Y29yZUNoYW5nZWRSZXNwb25zZU1lc3NhZ2VIAFIibm90aWZ5U2lua0JsdWVTY29yZUNoYW5nZW'
    'RSZXNwb25zZRKBAQogc2lua0JsdWVTY29yZUNoYW5nZWROb3RpZmljYXRpb24YogggASgLMjIu'
    'cHJvdG93aXJlLlNpbmtCbHVlU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZUgAUiBzaW'
    '5rQmx1ZVNjb3JlQ2hhbmdlZE5vdGlmaWNhdGlvbhJCCgtiYW5SZXNwb25zZRikCCABKAsyHS5w'
    'cm90b3dpcmUuQmFuUmVzcG9uc2VNZXNzYWdlSABSC2JhblJlc3BvbnNlEkgKDXVuYmFuUmVzcG'
    '9uc2UYpgggASgLMh8ucHJvdG93aXJlLlVuYmFuUmVzcG9uc2VNZXNzYWdlSABSDXVuYmFuUmVz'
    'cG9uc2USTgoPZ2V0SW5mb1Jlc3BvbnNlGKgIIAEoCzIhLnByb3Rvd2lyZS5HZXRJbmZvUmVzcG'
    '9uc2VNZXNzYWdlSABSD2dldEluZm9SZXNwb25zZRKEAQohc3RvcE5vdGlmeWluZ1V0eG9zQ2hh'
    'bmdlZFJlc3BvbnNlGKoIIAEoCzIzLnByb3Rvd2lyZS5TdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2'
    'VkUmVzcG9uc2VNZXNzYWdlSABSIXN0b3BOb3RpZnlpbmdVdHhvc0NoYW5nZWRSZXNwb25zZRKc'
    'AQopbm90aWZ5UHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVzcG9uc2UYrAggASgLMjsucH'
    'JvdG93aXJlLk5vdGlmeVBydW5pbmdQb2ludFV0eG9TZXRPdmVycmlkZVJlc3BvbnNlTWVzc2Fn'
    'ZUgAUilub3RpZnlQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXNwb25zZRKWAQoncHJ1bm'
    'luZ1BvaW50VXR4b1NldE92ZXJyaWRlTm90aWZpY2F0aW9uGK0IIAEoCzI5LnByb3Rvd2lyZS5Q'
    'cnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVOb3RpZmljYXRpb25NZXNzYWdlSABSJ3BydW5pbm'
    'dQb2ludFV0eG9TZXRPdmVycmlkZU5vdGlmaWNhdGlvbhKxAQowc3RvcE5vdGlmeWluZ1BydW5p'
    'bmdQb2ludFV0eG9TZXRPdmVycmlkZVJlc3BvbnNlGK8IIAEoCzJCLnByb3Rvd2lyZS5TdG9wTm'
    '90aWZ5aW5nUHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVzcG9uc2VNZXNzYWdlSABSMHN0'
    'b3BOb3RpZnlpbmdQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXNwb25zZRKTAQomZXN0aW'
    '1hdGVOZXR3b3JrSGFzaGVzUGVyU2Vjb25kUmVzcG9uc2UYsQggASgLMjgucHJvdG93aXJlLkVz'
    'dGltYXRlTmV0d29ya0hhc2hlc1BlclNlY29uZFJlc3BvbnNlTWVzc2FnZUgAUiZlc3RpbWF0ZU'
    '5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXNwb25zZRKNAQokbm90aWZ5VmlydHVhbERhYVNjb3Jl'
    'Q2hhbmdlZFJlc3BvbnNlGLMIIAEoCzI2LnByb3Rvd2lyZS5Ob3RpZnlWaXJ0dWFsRGFhU2Nvcm'
    'VDaGFuZ2VkUmVzcG9uc2VNZXNzYWdlSABSJG5vdGlmeVZpcnR1YWxEYWFTY29yZUNoYW5nZWRS'
    'ZXNwb25zZRKHAQoidmlydHVhbERhYVNjb3JlQ2hhbmdlZE5vdGlmaWNhdGlvbhi0CCABKAsyNC'
    '5wcm90b3dpcmUuVmlydHVhbERhYVNjb3JlQ2hhbmdlZE5vdGlmaWNhdGlvbk1lc3NhZ2VIAFIi'
    'dmlydHVhbERhYVNjb3JlQ2hhbmdlZE5vdGlmaWNhdGlvbhJyChtnZXRCYWxhbmNlQnlBZGRyZX'
    'NzUmVzcG9uc2UYtgggASgLMi0ucHJvdG93aXJlLkdldEJhbGFuY2VCeUFkZHJlc3NSZXNwb25z'
    'ZU1lc3NhZ2VIAFIbZ2V0QmFsYW5jZUJ5QWRkcmVzc1Jlc3BvbnNlEnsKHmdldEJhbGFuY2VzQn'
    'lBZGRyZXNzZXNSZXNwb25zZRi4CCABKAsyMC5wcm90b3dpcmUuR2V0QmFsYW5jZXNCeUFkZHJl'
    'c3Nlc1Jlc3BvbnNlTWVzc2FnZUgAUh5nZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVzcG9uc2USew'
    'oebm90aWZ5TmV3QmxvY2tUZW1wbGF0ZVJlc3BvbnNlGLoIIAEoCzIwLnByb3Rvd2lyZS5Ob3Rp'
    'ZnlOZXdCbG9ja1RlbXBsYXRlUmVzcG9uc2VNZXNzYWdlSABSHm5vdGlmeU5ld0Jsb2NrVGVtcG'
    'xhdGVSZXNwb25zZRJ1ChxuZXdCbG9ja1RlbXBsYXRlTm90aWZpY2F0aW9uGLsIIAEoCzIuLnBy'
    'b3Rvd2lyZS5OZXdCbG9ja1RlbXBsYXRlTm90aWZpY2F0aW9uTWVzc2FnZUgAUhxuZXdCbG9ja1'
    'RlbXBsYXRlTm90aWZpY2F0aW9uEo0BCiRnZXRNZW1wb29sRW50cmllc0J5QWRkcmVzc2VzUmVz'
    'cG9uc2UYvQggASgLMjYucHJvdG93aXJlLkdldE1lbXBvb2xFbnRyaWVzQnlBZGRyZXNzZXNSZX'
    'Nwb25zZU1lc3NhZ2VIAFIkZ2V0TWVtcG9vbEVudHJpZXNCeUFkZHJlc3Nlc1Jlc3BvbnNlEmAK'
    'FWdldENvaW5TdXBwbHlSZXNwb25zZRi/CCABKAsyJy5wcm90b3dpcmUuR2V0Q29pblN1cHBseV'
    'Jlc3BvbnNlTWVzc2FnZUgAUhVnZXRDb2luU3VwcGx5UmVzcG9uc2USRQoMcGluZ1Jlc3BvbnNl'
    'GMEIIAEoCzIeLnByb3Rvd2lyZS5QaW5nUmVzcG9uc2VNZXNzYWdlSABSDHBpbmdSZXNwb25zZR'
    'JXChJnZXRNZXRyaWNzUmVzcG9uc2UYwwggASgLMiQucHJvdG93aXJlLkdldE1ldHJpY3NSZXNw'
    'b25zZU1lc3NhZ2VIAFISZ2V0TWV0cmljc1Jlc3BvbnNlEmAKFWdldFNlcnZlckluZm9SZXNwb2'
    '5zZRjFCCABKAsyJy5wcm90b3dpcmUuR2V0U2VydmVySW5mb1Jlc3BvbnNlTWVzc2FnZUgAUhVn'
    'ZXRTZXJ2ZXJJbmZvUmVzcG9uc2USYAoVZ2V0U3luY1N0YXR1c1Jlc3BvbnNlGMcIIAEoCzInLn'
    'Byb3Rvd2lyZS5HZXRTeW5jU3RhdHVzUmVzcG9uc2VNZXNzYWdlSABSFWdldFN5bmNTdGF0dXNS'
    'ZXNwb25zZRKNAQokZ2V0RGFhU2NvcmVUaW1lc3RhbXBFc3RpbWF0ZVJlc3BvbnNlGMkIIAEoCz'
    'I2LnByb3Rvd2lyZS5HZXREYWFTY29yZVRpbWVzdGFtcEVzdGltYXRlUmVzcG9uc2VNZXNzYWdl'
    'SABSJGdldERhYVNjb3JlVGltZXN0YW1wRXN0aW1hdGVSZXNwb25zZRKNAQokc3VibWl0VHJhbn'
    'NhY3Rpb25SZXBsYWNlbWVudFJlc3BvbnNlGM0IIAEoCzI2LnByb3Rvd2lyZS5TdWJtaXRUcmFu'
    'c2FjdGlvblJlcGxhY2VtZW50UmVzcG9uc2VNZXNzYWdlSABSJHN1Ym1pdFRyYW5zYWN0aW9uUm'
    'VwbGFjZW1lbnRSZXNwb25zZRJjChZnZXRDb25uZWN0aW9uc1Jlc3BvbnNlGM8IIAEoCzIoLnBy'
    'b3Rvd2lyZS5HZXRDb25uZWN0aW9uc1Jlc3BvbnNlTWVzc2FnZUgAUhZnZXRDb25uZWN0aW9uc1'
    'Jlc3BvbnNlEmAKFWdldFN5c3RlbUluZm9SZXNwb25zZRjRCCABKAsyJy5wcm90b3dpcmUuR2V0'
    'U3lzdGVtSW5mb1Jlc3BvbnNlTWVzc2FnZUgAUhVnZXRTeXN0ZW1JbmZvUmVzcG9uc2USYwoWZ2'
    'V0RmVlRXN0aW1hdGVSZXNwb25zZRjTCCABKAsyKC5wcm90b3dpcmUuR2V0RmVlRXN0aW1hdGVS'
    'ZXNwb25zZU1lc3NhZ2VIAFIWZ2V0RmVlRXN0aW1hdGVSZXNwb25zZRKHAQoiZ2V0RmVlRXN0aW'
    '1hdGVFeHBlcmltZW50YWxSZXNwb25zZRjVCCABKAsyNC5wcm90b3dpcmUuR2V0RmVlRXN0aW1h'
    'dGVFeHBlcmltZW50YWxSZXNwb25zZU1lc3NhZ2VIAFIiZ2V0RmVlRXN0aW1hdGVFeHBlcmltZW'
    '50YWxSZXNwb25zZRJ1ChxnZXRDdXJyZW50QmxvY2tDb2xvclJlc3BvbnNlGNcIIAEoCzIuLnBy'
    'b3Rvd2lyZS5HZXRDdXJyZW50QmxvY2tDb2xvclJlc3BvbnNlTWVzc2FnZUgAUhxnZXRDdXJyZW'
    '50QmxvY2tDb2xvclJlc3BvbnNlQgkKB3BheWxvYWQ=');

