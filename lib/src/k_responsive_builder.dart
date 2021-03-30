import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';

class KResponsive{


  static dynamic builder(BuildContext  context,{dynamic tablet,
    dynamic web,
    dynamic phoneLarge,
    dynamic phoneMedium,
    dynamic phoneSmall,
    dynamic watch,}){
    switch (KResponsive.getType(context)) {
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

  static Widget widgetBuilder({Widget? tablet,
    Widget? web,
    Widget? phoneLarge,
    Widget? phoneMedium,
    Widget? phoneSmall,
    Widget? watch,}){
    return LayoutBuilder(builder: (ctx,constraints){
      switch (KResponsive.getType(ctx)) {
        case DeviceType.tablet:
          return tablet??Container();
        case DeviceType.web:
          return web??Container();
        case DeviceType.phoneLarge:
          return phoneLarge??Container();
        case DeviceType.phoneMedium:
          return phoneMedium??Container();
        case DeviceType.phoneSmall:
          return phoneSmall??Container();
        case DeviceType.watch:
          return watch??Container();
      }
    });
  }



  static DeviceType  getType(BuildContext context) {

    if (context.width < 320) {
      return DeviceType.phoneSmall;
    } else if (context.width < 480) {
      return DeviceType.phoneMedium;
    } else if (context.width < 720) {
      return DeviceType.phoneLarge;
    } else if (context.width < 1024) {
      return DeviceType.tablet;
    } else {
      return DeviceType.web;
    }
  }
}