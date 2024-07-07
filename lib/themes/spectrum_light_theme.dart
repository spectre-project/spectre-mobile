import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class SpectrumLightTheme extends BaseTheme {
  //static const deepRed = Color(0xFF009688);
  static const deepRed = Color.fromRGBO(255, 0, 90, 1.0);

  //static const red = Color(0xFF009688);
  static const red = Color.fromRGBO(255, 0, 90, 1.0);

  //static const redLight = Color(0xFF9EEDD4);
  static const redLight = Color.fromRGBO(255, 0, 90, 1.0);

  static const white = Color(0xFFFFFFFF);

  static const whiteishDark = Color(0xFFE8F0FA);

  static const grey = Color(0xFF454868);

  static const black = Color(0xFF000000);

  static const darkdeepRed = Color.fromARGB(255, 150, 0, 0);

  bool isLightTheme = true;

  Color primary = deepRed;
  Color primary60 = deepRed.withOpacity(0.9);
  Color primary45 = deepRed.withOpacity(0.8);
  Color primary30 = deepRed.withOpacity(0.6);
  Color primary20 = deepRed.withOpacity(0.45);
  Color primary15 = deepRed.withOpacity(0.3);
  Color primary10 = deepRed.withOpacity(0.2);

  Color success = red;
  Color success60 = red.withOpacity(0.6);
  Color success30 = red.withOpacity(0.3);
  Color success15 = red.withOpacity(0.15);

  Color successDark = redLight;
  Color successDark30 = redLight.withOpacity(0.3);

  Color background = white;
  Color background40 = white.withOpacity(0.4);
  Color background00 = white.withOpacity(0.0);

  Color backgroundDark = white;
  Color backgroundDark00 = white.withOpacity(0.0);

  Color backgroundDarkest = whiteishDark;

  Color text = grey.withOpacity(0.9);
  Color text60 = grey.withOpacity(0.6);
  Color text45 = grey.withOpacity(0.45);
  Color text30 = grey.withOpacity(0.3);
  Color text20 = grey.withOpacity(0.2);
  Color text15 = grey.withOpacity(0.15);
  Color text10 = grey.withOpacity(0.1);
  Color text05 = grey.withOpacity(0.05);
  Color text03 = grey.withOpacity(0.03);

  Color overlay90 = black.withOpacity(0.9);
  Color overlay85 = black.withOpacity(0.85);
  Color overlay80 = black.withOpacity(0.8);
  Color overlay70 = black.withOpacity(0.70);
  Color overlay50 = black.withOpacity(0.5);
  Color overlay30 = black.withOpacity(0.3);
  Color overlay20 = black.withOpacity(0.2);

  Color barrier = black.withOpacity(0.7);
  Color barrierWeaker = black.withOpacity(0.4);
  Color barrierWeakest = black.withOpacity(0.3);
  Color barrierStronger = black.withOpacity(0.85);

  Color animationOverlayMedium = white.withOpacity(0.7);
  Color animationOverlayStrong = white.withOpacity(0.85);

  //Brightness brightness = Brightness.light;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(
    color: darkdeepRed.withOpacity(0.1),
    offset: Offset(0, 3),
    blurRadius: 15,
  );
  BoxShadow boxShadowButton = BoxShadow(
    color: darkdeepRed.withOpacity(0.2),
    offset: Offset(0, 3),
    blurRadius: 15,
  );
}
