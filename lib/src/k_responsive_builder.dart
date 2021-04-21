import 'package:flutter/material.dart';
import 'package:k_responsive/src/k_resource.dart';
import 'package:k_responsive/src/responsive_object.dart';

class KResponsiveBuilder extends StatelessWidget {
  final Widget? child;
  final Size? designSize;
  final KResponsiveObject responsive;

  const KResponsiveBuilder({
    Key? key,
    @required this.designSize,
    @required this.child,
    this.responsive = const KResponsiveObject(),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    KResource.ins.set(ctx: context, s: designSize);
    return child!;
  }
}
