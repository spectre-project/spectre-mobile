import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spectrum/spectre/spectre.dart';

void main() {
  final address =
      'spectre:qpauqsvk7yf9unexwmxsnmg547mhyga37csh0kj53q6xxgl24ydxjxa3h2n6v';

  test('Uri with invalid address', () {
    final uriStr = 'spectre:invalid';
    final uri = SpectreUri.tryParse(uriStr);

    expect(uri, isNull);
  });

  test('Uri with different prefix', () {
    final uriStr = address;
    final uri = SpectreUri.tryParse(uriStr, prefix: AddressPrefix.spectreTest);

    expect(uri, isNull);
  });

  test('Uri with invalid amount', () {
    final uriStr = '$address?amount=10,1234';
    final uri = SpectreUri.tryParse(uriStr);

    expect(uri, isNull);
  });

  test('Uri with address', () {
    final uriStr = address;
    final uri = SpectreUri.tryParse(uriStr);

    expect(uri != null, true);
    expect(uri!.address.toString(), equals(address));
    expect(uri.amount, isNull);
    expect(uri.label, isNull);
    expect(uri.message, isNull);
    expect(uri.others, isEmpty);
  });

  test('Uri with ddress and label', () {
    final label = 'My Address';
    final uriStr = '$address?label=${Uri.encodeComponent(label)}';
    final uri = SpectreUri.tryParse(uriStr);

    expect(uri, isNot(null));
    expect(uri!.address.toString(), equals(address));
    expect(uri.amount, isNull);
    expect(uri.label, equals(label));
    expect(uri.message, isNull);
    expect(uri.others, isEmpty);
  });

  test('Uri with address, amount and label', () {
    final label = 'My Address';
    final amount = Amount.value(Decimal.parse('1.234'));
    final uriStr =
        '$address?amount=$amount&label=${Uri.encodeComponent(label)}';
    final uri = SpectreUri.tryParse(uriStr);

    expect(uri, isNot(null));
    expect(uri!.address.toString(), equals(address));
    expect(uri.amount, equals(amount));
    expect(uri.label, equals(label));
    expect(uri.message, isNull);
    expect(uri.others, isEmpty);
  });

  test('Uri with address, amount, label and message', () {
    final label = 'My Address';
    final message = 'Donation to dev fund';
    final amount = Amount.value(Decimal.parse('1.234'));
    final params = {
      'amount': Uri.encodeComponent(amount.toString()),
      'label': Uri.encodeComponent(label),
      'message': Uri.encodeComponent(message),
    };
    final uriStr =
        '$address?${params.entries.map((e) => '${e.key}=${e.value}').join('&')}';
    final uri = SpectreUri.tryParse(uriStr);

    expect(uri, isNot(null));
    expect(uri!.address.toString(), equals(address));
    expect(uri.amount, equals(amount));
    expect(uri.label, equals(label));
    expect(uri.message, equals(message));
    expect(uri.others, isEmpty);
  });
}
