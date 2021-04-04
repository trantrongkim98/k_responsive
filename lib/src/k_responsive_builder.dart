import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';

/// [KResponsive] use to responsive

class KResponsive {
  KResponsive._();
  // large than 1024
  double _web = 1025;

  /// less than or equal 200
  double _watch = 200;

  /// less than or equal 1024
  double _tablet = 1024;

  /// less than or equal 720
  double _phoneLarge = 720;

  ///  less than or equal 480
  double _phoneMedium = 480;

  /// less than or equal 320
  double _phoneSmall = 320;

  /// context to get width of device
  /// in case you need calculator and don't have BuildContext
  /// use [setValue] to update Context
  /// if device switch between landscape and portrait
  BuildContext? _context;

  /// [setValue] init size of device
  void setValue({
    double? watch,
    double? tablet,
    double? phoneLarge,
    double? phoneMedium,
    double? phoneSmall,
    BuildContext? context,
  }) {
    this._watch = watch ?? this._watch;
    this._tablet = tablet ?? this._tablet;
    this._phoneLarge = phoneLarge ?? this._phoneLarge;
    this._phoneMedium = phoneMedium ?? this._phoneMedium;
    this._phoneSmall = phoneSmall ?? this._phoneSmall;
    this._context = context ?? this._context;
  }

  /// [ins] singleton instance
  static KResponsive ins = KResponsive._();

  /// [responsive] responsive dynamic value and required a BuildContext
  /// [tablet] value for tablet device
  /// [web] value for web device
  /// [phoneLarge] value for phone size large than 480 and less than or equal 720
  /// [phoneMedium] value for phone size less than or equal 480 and large than 320
  /// [phoneSmall] value for phone size less than 320
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

  /// [responsiveTablet] responsive dynamic value and required a BuildContext
  /// [tablet] value for tablet device
  /// [defaultValue] value default for something else
  static T responsiveTablet<T>({
    BuildContext? context,
    T? defaultValue,
    T? tablet,
  }) {
    switch (KResponsive.getType(context)) {
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
    BuildContext? context,
    T? defaultValue,
    T? web,
  }) {
    switch (KResponsive.getType(context)) {
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
    BuildContext? context,
    T? defaultValue,
    T? watch,
  }) {
    switch (KResponsive.getType(context)) {
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
    BuildContext? context,
    T? defaultValue,
    T? phoneLarge,
  }) {
    switch (KResponsive.getType(context)) {
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
    switch (KResponsive.getType(context)) {
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
    BuildContext? context,
    T? defaultValue,
    T? phoneSmall,
  }) {
    switch (KResponsive.getType(context)) {
      case DeviceType.phoneSmall:
        return phoneSmall!;
      default:
        return defaultValue!;
    }
  }

  /// [widgetBuilder] responsive Widget and don't required BuildContext
  /// [tablet] widget for tablet device
  /// [web] widget for web device
  /// [phoneLarge] widget for phone size large than 480 and less than or equal 720
  /// [phoneMedium] widget for phone size less than or equal 480 and large than 320
  /// [phoneSmall] widget for phone size less than 320
  /// [watch] widget for watch device
  static Widget widgetBuilder({
    Widget? tablet,
    Widget? web,
    Widget? phoneLarge,
    Widget? phoneMedium,
    Widget? phoneSmall,
    Widget? watch,
  }) {
    return LayoutBuilder(builder: (ctx, constraints) {
      switch (KResponsive.getType(ctx)) {
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
    });
  }

  ///[getType(BuildContext context)] get DeviceType by BuildContext
  static DeviceType getType(BuildContext? context) {
    if (KResponsive.ins._context == null && context == null)
      throw ErrorSummary('''
        context can not be null
    ''');

    double width = MediaQuery.of(
      KResponsive.ins._context ?? context!,
    ).size.width;
    if (width <= 320) {
      return DeviceType.phoneSmall;
    } else if (width <= 480) {
      return DeviceType.phoneMedium;
    } else if (width <= 720) {
      return DeviceType.phoneLarge;
    } else if (width <= 1024) {
      return DeviceType.tablet;
    } else {
      return DeviceType.web;
    }
  }
}
