import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';
import 'package:k_responsive/src/k_resource.dart';
import 'package:k_responsive/src/util.dart';

/// [KResponsive] use to responsive

class KResponsive {



  /// [responsive] responsive dynamic value and required a BuildContext
  /// [tablet] value for tablet device
  /// [web] value for web device
  /// [phoneLarge] value for phone size large than 480 and smaller than or equal 720
  /// [phoneMedium] value for phone size smaller than or equal 480 and large than 320
  /// [phoneSmall] value for phone size smaller than 320
  /// [watch] value for watch device
  static T? responsive<T>({
    BuildContext? context,
    T? tablet,
    T? web,
    T? phoneLarge,
    T? phoneMedium,
    T? phoneSmall,
    T? watch,
  }) {
    switch (Utils().getType(context)) {
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

  /// [responsiveTablet] responsive dynamic value and required a BuildContext
  /// [tablet] value for tablet device
  /// [defaultValue] value default for something else
  static T responsiveTablet<T>({
    T? defaultValue,
    T? tablet,
  }) {
    switch (Utils().getType(KResource.ins.ctx)) {
      case DeviceType.tablet:
        return tablet!;
      default:
        return defaultValue!;
    }
  }

  /// [responsiveWeb] responsive dynamic value and required a BuildContext
  /// [web] value for tablet device
  /// [defaultValue] value default for something else
  static T responsiveWeb<T>({
    T? defaultValue,
    T? web,
  }) {
    switch (Utils().getType(KResource.ins.ctx)) {
      case DeviceType.web:
        return web!;
      default:
        return defaultValue!;
    }
  }

  /// [responsiveWatch] responsive dynamic value and required a BuildContext
  /// [watch] value for tablet device
  /// [defaultValue] value default for something else
  static T responsiveWatch<T>({
    T? defaultValue,
    T? watch,
  }) {
    switch (Utils().getType(KResource.ins.ctx)) {
      case DeviceType.watch:
        return watch!;
      default:
        return defaultValue!;
    }
  }

  /// [responsivePhoneLarge] responsive dynamic value and required a BuildContext
  /// [phoneLarge] value for tablet device
  /// [defaultValue] value default for something else
  static T responsivePhoneLarge<T>({
    T? defaultValue,
    T? phoneLarge,
  }) {
    switch (Utils().getType(KResource.ins.ctx)) {
      case DeviceType.phoneLarge:
        return phoneLarge!;
      default:
        return defaultValue!;
    }
  }

  /// [responsivePhoneMedium] responsive dynamic value and required a BuildContext
  /// [phoneMedium] value for tablet device
  /// [defaultValue] value default for something else
  static T responsivePhoneMedium<T>({
    BuildContext? context,
    T? defaultValue,
    T? phoneMedium,
  }) {
    switch (Utils().getType(context)) {
      case DeviceType.phoneMedium:
        return phoneMedium!;
      default:
        return defaultValue!;
    }
  }

  /// [responsivePhoneSmall] responsive dynamic value and required a BuildContext
  /// [phoneSmall] value for tablet device
  /// [defaultValue] value default for something else
  static T responsivePhoneSmall<T>({
    T? defaultValue,
    T? phoneSmall,
  }) {
    switch (Utils().getType(KResource.ins.ctx)) {
      case DeviceType.phoneSmall:
        return phoneSmall!;
      default:
        return defaultValue!;
    }
  }

  /// [widgetBuilder] responsive Widget and don't required BuildContext
  /// [tablet] widget for tablet device
  /// [web] widget for web device
  /// [phoneLarge] widget for phone size large than 480 and smaller than or equal 720
  /// [phoneMedium] widget for phone size smaller than or equal 480 and large than 320
  /// [phoneSmall] widget for phone size smaller than 320
  /// [watch] widget for watch device
  static Widget widgetBuilder({
    Widget? tablet,
    Widget? web,
    Widget? phoneLarge,
    Widget? phoneMedium,
    Widget? phoneSmall,
    Widget? watch,
  }) {
    switch (Utils().getType(KResource.ins.ctx)) {
      case DeviceType.tablet:
        return tablet ?? Container();
      case DeviceType.web:
        return web ?? Container();
      case DeviceType.phoneLarge:
        return phoneLarge ?? Container();
      case DeviceType.phoneMedium:
        return phoneMedium ?? Container();
      case DeviceType.phoneSmall:
        return phoneSmall ?? Container();
      case DeviceType.watch:
        return watch ?? Container();
    }
  }
}
