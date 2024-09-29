import 'vault.dart';

class LockSettings {
  static const _spectrum_lock = 'fspectrum_lock_dev';
  static const _spectrum_autolock = 'fspectrum_autolock_dev';

  static const _true = 'true';
  static const _false = 'false';

  final Vault vault;
  LockSettings(this.vault);

  Future<void> setLock(bool value) =>
      vault.set(_spectrum_lock, value ? _true : _false);

  Future<bool> getLock() async =>
      (await vault.get(_spectrum_lock) ?? _true) == _true;

  Future<void> setAutoLock(bool value) =>
      vault.set(_spectrum_autolock, value ? _true : _false);

  Future<bool> getAutoLock() async =>
      (await vault.get(_spectrum_autolock) ?? _true) == _true;
}
