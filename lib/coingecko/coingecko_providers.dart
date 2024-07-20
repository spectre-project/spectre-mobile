import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../settings/settings_providers.dart';
import 'coingecko_price_notifier.dart';
import 'coingecko_repository.dart';
import 'coingecko_types.dart';

final _spectrePriceCacheProvider =
    StateNotifierProvider<CoinGeckoPriceNotifier, CoinGeckoPrice>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return CoinGeckoPriceNotifier(repository);
});

final _spectrePriceRemoteProvider = FutureProvider<CoinGeckoPrice>((ref) async {
  ref.watch(remoteRefreshProvider);

  final currency = ref.watch(currencyProvider);
  final fiat = currency.name.toLowerCase();

  final log = ref.read(loggerProvider);
  final cached = ref.read(_spectrePriceCacheProvider);

  // 60 seconds
  final maxCacheAge = 60 * 1000;
  final nowTimestamp = DateTime.now().millisecondsSinceEpoch;
  if (cached.currency == currency.currency &&
      nowTimestamp - cached.timestamp < maxCacheAge) {
    log.d('Using cached CoinGecko exchange rates');
    return cached;
  }

  try {
    final price = await getCoinGeckoApiPrice(fiat);
    if (price == null) {
      throw Exception('Failed to fetch remote exchange rate');
    }

    return CoinGeckoPrice(
      currency: currency.currency,
      price: Decimal.parse(price.toString()),
      timestamp: nowTimestamp,
    );
  } catch (e, st) {
    log.e('Failed to fetch SPR exchange rate', error: e, stackTrace: st);
    if (cached.currency == currency.currency) {
      return cached;
    }
    return CoinGeckoPrice(
      currency: currency.currency,
      price: Decimal.zero,
      timestamp: nowTimestamp,
    );
  }
});

final coingeckoSpectrePriceProvider = Provider.autoDispose((ref) {
  final cache = ref.watch(_spectrePriceCacheProvider.notifier);
  final remote = ref.watch(_spectrePriceRemoteProvider);

  remote.whenOrNull(data: (data) {
    Future.microtask(() => cache.updatePrice(data));
  });

  return remote.asData?.value ?? cache.price;
});
