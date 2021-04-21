class KResponsiveObject {
  /// smaller than or equal 200
  final double watch ;

  /// smaller than or equal 1024
  final double tablet ;

  /// smaller than or equal 720
  final double phoneLarge ;

  ///  smaller than or equal 480
  final double phoneMedium ;

  /// smaller than or equal 320
  final double phoneSmall ;

  const KResponsiveObject({
    this.watch = 200,
    this.tablet = 1024,
    this.phoneLarge = 720,
    this.phoneMedium = 480,
    this.phoneSmall = 320,
  });
}
