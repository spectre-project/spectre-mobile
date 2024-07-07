enum AddressPrefix {
  unknown,
  spectre,
  spectreTest,
  spectreDev,
  spectreSim;

  static AddressPrefix parseBech32Prefix(String prefix) {
    switch (prefix) {
      case 'spectre':
        return AddressPrefix.spectre;
      case 'spectretest':
        return AddressPrefix.spectreTest;
      case 'spectredev':
        return AddressPrefix.spectreDev;
      case 'spectresim':
        return AddressPrefix.spectreSim;
      default:
        return AddressPrefix.unknown;
    }
  }

  @override
  String toString() => name.toLowerCase();
}
