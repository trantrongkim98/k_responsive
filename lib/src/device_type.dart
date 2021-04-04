enum DeviceType {
  /// 720 < [tablet] <= 1024
  tablet,

  /// something else
  web,

  /// 480 < [phoneLarge] <= 720
  phoneLarge,

  /// 320 < [phoneMedium] <= 480
  phoneMedium,

  /// [phoneSmall] <= 320
  phoneSmall,

  /// [watch] format
  watch,
}
