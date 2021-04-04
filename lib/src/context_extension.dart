import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';

/// [KContext] extension use when you
/// don't want call method `KResponsive.ins.initial(context: context);`
/// but you will need it if you calculator responsive without Context

extension KContext on BuildContext {
  /// [responsive] enter a context and return value by screen size
  /// [table] value of screen table
  /// [web] value of screen web
  /// [phoneLarge] value of screen phone had size large than 480 and less equal 720
  /// [phoneMedium] value of sceen phone had size large than 3200 and less equal 480
  /// [phoneSmall] value of screen phone had size less equal 320
  /// [watch] value of wwatch screen
  T? responsive<T>({
    T? tablet,
    T? web,
    T? phoneLarge,
    T? phoneMedium,
    T? phoneSmall,
    T? watch,
  }) {
    return KResponsive.responsive<T>(
      context: this,
      web: web,
      watch: watch,
      tablet: tablet,
      phoneSmall: phoneSmall,
      phoneLarge: phoneLarge,
      phoneMedium: phoneMedium,
    );
  }

  /// [responsiveTablet] responsive for tablet and set default value for something else
  T responsiveTablet<T>({T? defaultValue, T? tablet}) {
    return KResponsive.responsiveTablet<T>(
      context: this,
      tablet: tablet,
      defaultValue: defaultValue,
    );
  }

  /// [responsiveWatch] responsive for watch and set default value for something else
  T responsiveWatch<T>({T? defaultValue, T? watch}) {
    return KResponsive.responsiveWatch<T>(
      context: this,
      watch: watch,
      defaultValue: defaultValue,
    );
  }

  /// [responsiveWeb] responsive for web and set default value for something else
  T responsiveWeb<T>({T? defaultValue, T? web}) {
    return KResponsive.responsiveWeb<T>(
      context: this,
      web: web,
      defaultValue: defaultValue,
    );
  }

  /// [responsivePhoneLarge] responsive for phoneLarge and set default value for something else
  T responsivePhoneLarge<T>({T? defaultValue, T? phoneLarge}) {
    return KResponsive.responsivePhoneLarge<T>(
      context: this,
      phoneLarge: phoneLarge,
      defaultValue: defaultValue,
    );
  }

  /// [responsivePhoneMedium] responsive for phoneMedium and set default value for something else
  T responsivePhoneMedium<T>({T? defaultValue, T? phoneMedium}) {
    return KResponsive.responsivePhoneMedium<T>(
      context: this,
      phoneMedium: phoneMedium,
      defaultValue: defaultValue,
    );
  }

  /// [responsivePhoneSmall] responsive for phoneSmall and set default value for something else
  T responsivePhoneSmall<T>({T? defaultValue, T? phoneSmall}) {
    return KResponsive.responsivePhoneSmall<T>(
      context: this,
      phoneSmall: phoneSmall,
      defaultValue: defaultValue,
    );
  }
}
