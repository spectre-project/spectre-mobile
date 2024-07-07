import 'contact.dart';

const kSpectreDevFundAddress =
    'spectre:qrxf48dgrdkjxllxczek3uweuldtan9nanzjsavk0ak9ynwn0zsayjjh7upez';

const kCommunityMarketingFundAddress =
    'spectre:qrxf48dgrdkjxllxczek3uweuldtan9nanzjsavk0ak9ynwn0zsayjjh7upez';

const kSpectrumTeamAddress =
    'spectre:qrxf48dgrdkjxllxczek3uweuldtan9nanzjsavk0ak9ynwn0zsayjjh7upez';

const kDonationAddresses = const [
  Contact(
    name: 'Spectre Dev Fund',
    address: kSpectreDevFundAddress,
  ),
  Contact(
    name: 'Community Marketing Fund',
    address: kCommunityMarketingFundAddress,
  ),
  Contact(
    name: 'Spectrum Team',
    address: kSpectrumTeamAddress,
  ),
];

final labeledAddresses = Map.fromEntries(
  kDonationAddresses.map((e) => MapEntry(e.address, e)),
);
