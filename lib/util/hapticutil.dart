import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';

import 'platform.dart';

/// Utilities for haptic feedback
class HapticUtil {
  const HapticUtil();

  /// Return true if this device supports taptic engine (iPhone 7+)
  Future<bool> hasTapticEngine() async {
    if (!kPlatformIsIOS) {
      return false;
    }
    IosDeviceInfo deviceInfo = await DeviceInfoPlugin().iosInfo;
    String deviceIdentifier = deviceInfo.utsname.machine;
    switch (deviceIdentifier) {
      case 'iPhone5,1': // iPhone 5
      case 'iPhone5,2': // iPhone 5
      case 'iPhone5,3': // iPhone 5C
      case 'iPhone5,4': // iPhone 5C
      case 'iPhone6,1': // iPhone 5S
      case 'iPhone6,2': // iPhone 5S
      case 'iPhone7,2': // iPhone 6
      case 'iPhone7,1': // iPhone 6 plus
      case 'iPhone8,1': // iPhone 6s
      case 'iPhone8,2': // iPhone 6s plus
        return false;
      default:
        return true;
    }
  }

  /// Feedback for error
  Future<void> error() async {
    if (kPlatformIsIOS) {
      // If this is a simulator or the device doesn't have a taptic engine
      if (await hasTapticEngine() && await Vibration.hasVibrator() == true) {
        Vibration.vibrate(duration: 500); // Vibration for error feedback
      } else {
        HapticFeedback.vibrate();
      }
    } else {
      HapticFeedback.vibrate();
    }
  }

  /// Feedback for success
  Future<void> success() async {
    if (kPlatformIsIOS) {
      // If this is a simulator or the device doesn't have a taptic engine
      if (await hasTapticEngine() && await Vibration.hasVibrator() == true) {
        Vibration.vibrate(
            duration: 100); // Short vibration for success feedback
      } else {
        HapticFeedback.mediumImpact();
      }
    } else {
      HapticFeedback.mediumImpact();
    }
  }

  /// Feedback for fingerprint success
  /// iOS-only, since Android already gives us feedback on success
  Future<void> fingerprintSuccess() async {
    if (kPlatformIsIOS) {
      Future.delayed(Duration(milliseconds: 50), success);
    }
  }
}
