import 'bip32/bip32.dart';

const int kMainnetRpcPort = 18110;
const int kTestnetPpcPort = 18210;
const int kSimnetRpcPort = 18510;
const int kDevnetRpcPort = 18610;

enum SpectreNetwork {
  mainnet,
  testnet,
  devnet,
  simnet,
}

int portForNetwork(SpectreNetwork network) {
  switch (network) {
    case SpectreNetwork.mainnet:
      return kMainnetRpcPort;
    case SpectreNetwork.testnet:
      return kTestnetPpcPort;
    case SpectreNetwork.simnet:
      return kSimnetRpcPort;
    case SpectreNetwork.devnet:
      return kDevnetRpcPort;
  }
}

SpectreNetwork networkForPort(int port) {
  switch (port) {
    case kMainnetRpcPort:
      return SpectreNetwork.mainnet;
    case kTestnetPpcPort:
      return SpectreNetwork.testnet;
    case kSimnetRpcPort:
      return SpectreNetwork.simnet;
    case kDevnetRpcPort:
      return SpectreNetwork.devnet;
    default:
      return SpectreNetwork.mainnet;
  }
}

SpectreNetwork networkForKpub(String kpub) {
  return switch (kpub.substring(0, 4)) {
    'kpub' => SpectreNetwork.mainnet,
    'ktub' => SpectreNetwork.testnet,
    'ksub' => SpectreNetwork.simnet,
    'kdub' => SpectreNetwork.devnet,
    _ => SpectreNetwork.mainnet,
  };
}

NetworkType networkTypeForNetwork(SpectreNetwork network) {
  switch (network) {
    case SpectreNetwork.mainnet:
      return spectreMainnet;
    case SpectreNetwork.testnet:
      return spectreTestnet;
    case SpectreNetwork.devnet:
      return spectreDevnet;
    case SpectreNetwork.simnet:
      return spectreSimnet;
  }
}

final spectreMainnet = NetworkType(
  messagePrefix: 'Spectre Signed Message:\n',
  bech32: 'spectre',
  bip32: Bip32Type(
    public: 0x038f332e,
    private: 0x038f2ef4,
  ),
  wif: 0x80,
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final spectreTestnet = NetworkType(
  messagePrefix: 'Spectre Signed Message:\n',
  bech32: 'spectretest',
  wif: 0xef,
  bip32: Bip32Type(
    public: 0x0390a241,
    private: 0x03909e07,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final spectreSimnet = NetworkType(
  messagePrefix: 'Spectre Signed Message:\n',
  bech32: 'spectresim',
  wif: 0x64,
  bip32: Bip32Type(
    public: 0x0390467d,
    private: 0x03904242,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final spectreDevnet = NetworkType(
  messagePrefix: 'Spectre Signed Message:\n',
  bech32: 'spectredev',
  wif: 0xef,
  bip32: Bip32Type(
    public: 0x038b41ba,
    private: 0x038b3d80,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);
