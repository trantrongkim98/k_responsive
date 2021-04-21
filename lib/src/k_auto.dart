import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';
import 'package:k_responsive/src/k_resource.dart';
import 'package:k_responsive/src/util.dart';

class KAuto {

  double setWidth(double value,
      {double? min, double? max}) {
    double ratioDv = Utils().contextRatio(KResource.ins.ctx);
    double dsRatio = Utils().ratio(KResource.ins.size.width);
    double ratio = dsRatio / ratioDv;
    double result = value / ratio;
    if (max != null && min != null) {
      return result.clamp(min, max);
    } else if (min != null) {
      return result.clamp(min>value?value:min, value<min?value:min);
    } else if (max != null) {
      return result.clamp(0, max);
    }
    return result;
  }

  double setHeight(double value,
      {double? min, double? max}) {
    final size = MediaQuery.of(KResource.ins.ctx).size;
    final ratio = size.height / (KResource.ins.size.height );
    final result = value * ratio;
    if (max != null && min != null) {
      return result.clamp(min, max);
    } else if (min != null) {
      return result.clamp(min, value);
    } else if (max != null) {
      return result.clamp(0, max);
    }
    return result;
  }

  double setFont(double value,
      { double? min, double? max}) {
    double hDv = MediaQuery.of(KResource.ins.ctx).size.height;
    final ratio = hDv / (KResource.ins.size.height);
    final result = value * ratio;
    if (max != null && min != null) {
      return result.clamp(min, max);
    } else if (min != null) {
      return result.clamp(min, value);
    } else if (max != null) {
      return result.clamp(0, max);
    }
    return result*0.99;
  }

  double setSafeHeight(double value,
      { double? min, double? max}) {
    final media =MediaQuery.of(KResource.ins.ctx);
    final size = media.size;
    final sizeSafe = Size(size.width,size.height-media.padding.top);
    final ratio = sizeSafe.height / (KResource.ins.size.height );
    final result = value * ratio;
    if (max != null && min != null) {
      return result.clamp(min, max);
    } else if (min != null) {
      return result.clamp(min, value);
    } else if (max != null) {
      return result.clamp(0, max);
    }
    return result;
  }

  double setSafeFont(double value,
      { double? min, double? max}) {
    final media =MediaQuery.of(KResource.ins.ctx);
    final size = media.size;
    final sizeSafe = Size(size.width,size.height-media.padding.top);
    double hDv = sizeSafe.height;/// height device
    final ratio = hDv / (KResource.ins.size.height);
    final result = value * ratio;
    if (max != null && min != null) {
      return result.clamp(min, max);
    } else if (min != null) {
      return result.clamp(min, value);
    } else if (max != null) {
      return result.clamp(0, max);
    }
    return result*0.99;
  }
}
