import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';

extension KContext on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  EdgeInsets get padding => MediaQuery.of(this).padding;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
  /// [kSize] enter a context and return value by screen size
  /// [table] value of screen table
  /// [web] value of screen web
  /// [phoneLarge] value of screen phone had size large than 480 and less equal 720
  /// [phoneMedium] value of sceen phone had size large than 3200 and less equal 480
  /// [phoneSmall] value of screen phone had size less equal 320
  /// [watch] value of wwatch screen
  dynamic responsive({
    dynamic tablet,
    dynamic web,
    dynamic phoneLarge,
    dynamic phoneMedium,
    dynamic phoneSmall,
    dynamic watch,
  }) {
    switch (getType) {
      case DeviceType.tablet:
        return tablet;
      case DeviceType.web:
        return web;
      case DeviceType.phoneLarge:
        return phoneLarge;
      case DeviceType.phoneMedium:
        return phoneMedium;
      case DeviceType.phoneSmall:
        return phoneSmall;
      case DeviceType.watch:
        return watch;
    }
  }

  DeviceType get getType {
    double w = MediaQuery.of(this).size.width;
    if (w < 320) {
      return DeviceType.phoneSmall;
    } else if (w < 480) {
      return DeviceType.phoneMedium;
    } else if (w < 720) {
      return DeviceType.phoneLarge;
    } else if (w < 1024) {
      return DeviceType.tablet;
    } else {
      return DeviceType.web;
    }
  }
}
