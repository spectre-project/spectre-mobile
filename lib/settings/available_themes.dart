import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import '../themes/themes.dart';
import 'setting_item.dart';

enum ThemeOptions {
  SPECTRUM_DARK,
  SPECTRUM_LIGHT,
  // VITERIUM,
  // SAPPHIRIUM,
  // PILLIUM,
  // NATRIUM,
  // TITANIUM,
  // INDIUM,
  // NEPTUNIUM,
  // THORIUM,
  // CARBON,
}

class ThemeSetting extends SettingSelectionItem {
  final ThemeOptions theme;

  const ThemeSetting(this.theme);

  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);

    switch (theme) {
      // case ThemeOptions.CARBON:
      //   return "Carbon";
      // case ThemeOptions.THORIUM:
      //   return "Thorium";
      // case ThemeOptions.NEPTUNIUM:
      //   return "Neptunium";
      // case ThemeOptions.INDIUM:
      //   return "Indium";
      // case ThemeOptions.TITANIUM:
      //   return "Titanium";
      // case ThemeOptions.NATRIUM:
      //   return "Natrium";
      // case ThemeOptions.VITERIUM:
      //   return "Viterium";
      // case ThemeOptions.SAPPHIRIUM:
      //   return "Sapphirium";
      // case ThemeOptions.PILLIUM:
      //   return "Pillium";
      case ThemeOptions.SPECTRUM_LIGHT:
        return l10n.themeLight;
      case ThemeOptions.SPECTRUM_DARK:
        return l10n.themeDark;
    }
  }

  BaseTheme getTheme() {
    switch (theme) {
      // case ThemeOptions.CARBON:
      //   return CarbonTheme();
      // case ThemeOptions.THORIUM:
      //   return ThoriumTheme();
      // case ThemeOptions.NEPTUNIUM:
      //   return NeptuniumTheme();
      // case ThemeOptions.INDIUM:
      //   return IndiumTheme();
      // case ThemeOptions.TITANIUM:
      //   return TitaniumTheme();
      // case ThemeOptions.NATRIUM:
      //   return NatriumTheme();
      // case ThemeOptions.VITERIUM:
      //   return ViteriumTheme();
      // case ThemeOptions.SAPPHIRIUM:
      //   return SapphiriumTheme();
      // case ThemeOptions.PILLIUM:
      //   return PilliumTheme();
      case ThemeOptions.SPECTRUM_LIGHT:
        return SpectrumLightTheme();
      case ThemeOptions.SPECTRUM_DARK:
        return SpectrumDarkTheme();
    }
  }

  // For saving to shared prefs
  String getId() => theme.name;
}
