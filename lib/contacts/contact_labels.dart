import 'contact.dart';

const kSpectreDevFundAddress =
    'spectre:qrxf48dgrdkjxllxczek3uweuldtan9nanzjsavk0ak9ynwn0zsayjjh7upez';

final labeledAddresses = Map.fromEntries(
  const [
    Contact(
      name: '#SpectreDevelopers',
      address: kSpectreDevFundAddress,
    ),
  ].map((e) => MapEntry(e.address, e)),
);
