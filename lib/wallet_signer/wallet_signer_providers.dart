import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../spectre/spectre.dart';
import '../wallet_address/wallet_address_providers.dart';
import '../wallet_auth/wallet_auth_providers.dart';
import 'wallet_signer.dart';

final walletSignerProvider = Provider.autoDispose((ref) {
  final addressNotifier = ref.watch(addressNotifierProvider);
  final walletAuth = ref.watch(walletAuthProvider.notifier);

  return WalletSigner(addressNotifier, walletAuth);
});

final walletServiceProvider = Provider.autoDispose((ref) {
  final signer = ref.watch(walletSignerProvider);
  final client = ref.watch(spectreClientProvider);

  return WalletService(
    signer: signer,
    client: client,
  );
});
