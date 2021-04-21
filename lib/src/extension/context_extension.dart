import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';

/// [KContext] extension use when you
/// don't want call method `KResponsive.ins.initial(context: context);`
/// but you will need it if you calculator responsive without Context

extension KContext on BuildContext {
  /// if orientation is landscape then true else false
  bool get landscape => MediaQuery.of(this).orientation == Orientation.landscape;
}
