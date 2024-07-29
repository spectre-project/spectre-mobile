import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import '../themes/themes.dart';
import 'setting_item.dart';

enum ThemeOptions {
  SPECTRUM_DARK,
  SPECTRUM_LIGHT,
  SPECTRUM_AMOLED_DARK,
}

class ThemeSetting extends SettingSelectionItem {
  final ThemeOptions theme;

  const ThemeSetting(this.theme);

  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);

    switch (theme) {
      case ThemeOptions.SPECTRUM_LIGHT:
        return l10n.themeLight;
      case ThemeOptions.SPECTRUM_DARK:
        return l10n.themeDark;
      case ThemeOptions.SPECTRUM_AMOLED_DARK:
        return l10n.themeAMOLEDDark;
    }
  }

  BaseTheme getTheme() {
    switch (theme) {
      case ThemeOptions.SPECTRUM_LIGHT:
        return SpectrumLightTheme();
      case ThemeOptions.SPECTRUM_DARK:
        return SpectrumDarkTheme();
      case ThemeOptions.SPECTRUM_AMOLED_DARK:
        return SpectrumAMOLEDDarkTheme();
    }
  }

  // For saving to shared prefs
  String getId() => theme.name;
}
