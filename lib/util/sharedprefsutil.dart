import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../settings/authentication_method.dart';
import '../settings/available_currency.dart';
import '../settings/available_language.dart';
import '../settings/available_themes.dart';

/// Price conversion preference values
enum PriceConversion { BTC, NONE, HIDDEN }

/// Singleton wrapper for shared preferences
class SharedPrefsUtil {
  final SharedPreferences sharedPrefs;
  SharedPrefsUtil(this.sharedPrefs);

  // Keys
  static const String first_launch_key = 'fspectrum_first_launch';
  static const String auth_method = 'fspectrum_auth_method';
  static const String cur_currency = 'fspectrum_currency_pref';
  static const String cur_language = 'fspectrum_language_pref';
  static const String cur_theme = 'fspectrum_theme_pref';
  static const String firstcontact_added = 'fspectrum_first_contact_added';
  // If user has seen the root/jailbreak warning yet
  static const String has_shown_root_warning = 'fspectrum_root_warn';
  static const String notice_shown = 'fspectrum_notice_shown';

  // For plain-text data
  Future<bool> set<T>(String key, T value) async {
    if (value is bool) {
      return sharedPrefs.setBool(key, value);
    } else if (value is String) {
      return sharedPrefs.setString(key, value);
    } else if (value is double) {
      return sharedPrefs.setDouble(key, value);
    } else if (value is int) {
      return sharedPrefs.setInt(key, value);
    }
    return false;
  }

  T get<T>(String key, {required T defaultValue}) {
    final value = sharedPrefs.get(key);
    if (value == null || !(value is T)) return defaultValue;
    return value as T;
  }

  /// Set a key with an expiry, expiry is in seconds
  Future<void> setWithExpiry(String key, dynamic value, int expiry) async {
    int expiryVal;
    if (expiry != -1) {
      DateTime now = DateTime.now().toUtc();
      DateTime expired = now.add(Duration(seconds: expiry));
      expiryVal = expired.millisecondsSinceEpoch;
    } else {
      expiryVal = expiry;
    }
    Map<String, dynamic> msg = {'data': value, 'expiry': expiryVal};
    String serialized = json.encode(msg);
    set(key, serialized);
  }

  /// Get a key that has an expiry
  Future<T?> getWithExpiry<T>(String key) async {
    String? val = get(key, defaultValue: null);
    if (val == null) {
      return null;
    }
    Map<String, dynamic> msg = json.decode(val);
    if (msg['expiry'] != -1) {
      DateTime expired = DateTime.fromMillisecondsSinceEpoch(msg['expiry']);
      if (DateTime.now().toUtc().difference(expired).inMinutes > 0) {
        await remove(key);
        return null;
      }
    }
    return msg['data'];
  }

  Future<void> remove(String key) => sharedPrefs.remove(key);

  // Key-specific helpers

  Future<void> setHasSeenRootWarning() {
    return set(has_shown_root_warning, true);
  }

  bool getHasSeenRootWarning() =>
      get(has_shown_root_warning, defaultValue: false);

  Future<void> setFirstLaunch() => set(first_launch_key, false);
  bool getFirstLaunch() => get(first_launch_key, defaultValue: true);

  Future<void> setFirstContactAdded(bool value) =>
      set(firstcontact_added, value);

  bool getFirstContactAdded() => get(firstcontact_added, defaultValue: false);

  Future<void> setNoticeShown(bool value) => set(notice_shown, value);
  bool getNoticeShown() => get(notice_shown, defaultValue: false);

  Future<void> setAuthMethod(AuthenticationMethod method) =>
      set(auth_method, method.getId());

  AuthenticationMethod getAuthMethod() =>
      AuthenticationMethod(AuthMethod.values.byName(get(
        auth_method,
        defaultValue: AuthMethod.BIOMETRICS.name,
      )));

  Future<void> setCurrency(AvailableCurrency currency) =>
      set(cur_currency, currency.getId());

  AvailableCurrency getCurrency() =>
      AvailableCurrency(AvailableCurrencies.values.byName(get(
        cur_currency,
        defaultValue: AvailableCurrencies.USD.name,
      )));

  Future<void> setLanguage(LanguageSetting language) =>
      set(cur_language, language.getId());

  LanguageSetting getLanguage() {
    final language = AvailableLanguage.values.byName(
      get(
        cur_language,
        defaultValue: AvailableLanguage.DEFAULT.name,
      ),
    );
    return LanguageSetting(language);
  }

  Future<void> setTheme(ThemeSetting theme) => set(cur_theme, theme.getId());
  ThemeSetting getTheme() {
    return ThemeSetting(ThemeOptions.values.byName(get(
      cur_theme,
      defaultValue: ThemeOptions.SPECTRUM_DARK.name,
    )));
  }

  // For logging out
  Future<void> deleteAll() {
    return Future.wait([
      sharedPrefs.remove(cur_currency),
      sharedPrefs.remove(auth_method),
      sharedPrefs.remove(has_shown_root_warning),
    ]);
  }
}
