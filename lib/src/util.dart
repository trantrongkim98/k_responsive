import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:k_responsive/src/device_type.dart';
import 'package:k_responsive/src/k_resource.dart';
import 'package:k_responsive/src/k_responsive.dart';

class Utils {


  bool isNumber<T>(T? number) {
    if (number is double || number is int || number is num) {
      return true;
    }
    return false;
  }

  bool isDouble<T>(T? number) {
    if (number is double) return true;
    return false;
  }

  bool isInt<T>(T? number) {
    if (number is int) return true;
    return false;
  }

  bool isNum<T>(T? number) {
    if (number is num) return true;
    return false;
  }

  double contextRatio(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return ratio(w);
  }

  double ratio(double value) {
    double result = 1;
    if (value < 240)
      return 1;
    else if (value < 320) {
      result = 1.5;
      double v = value - 240;
      result += v / 160;
    } else if (value < 480) {
      result = 2;
      double v = value - 320;
      result += v / 160;
    } else if (value < 640) {
      result = 3;
      double v = value - 480;
      result += v / 160;
    } else {
      result = 4;
      double v = value - 640;
      result += v / 160;
    }
    return result;
  }

  ///[getType(BuildContext context)] get DeviceType by BuildContext
  DeviceType getType(BuildContext? context) {
    if (KResource.ins.context == null && context == null)
      throw ErrorSummary('''
        context can not be null
    ''');

    double width = MediaQuery.of(
      KResource.ins.context ?? context!,
    ).size.width;
    if (width <= KResource.ins.responsive.phoneSmall) {
      return DeviceType.phoneSmall;
    } else if (width <= KResource.ins.responsive.phoneMedium) {
      return DeviceType.phoneMedium;
    } else if (width <= KResource.ins.responsive.phoneLarge) {
      return DeviceType.phoneLarge;
    } else if (width <= KResource.ins.responsive.tablet) {
      return DeviceType.tablet;
    } else {
      return DeviceType.web;
    }
  }
}
