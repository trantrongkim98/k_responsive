import 'package:flutter/cupertino.dart';
import 'package:k_responsive/src/responsive_object.dart';

class KResource {
  BuildContext? context;
  Size? designSize;
  KResponsiveObject responsive;
  KResource._({this.context,this.designSize = Size.zero,this.responsive =const  KResponsiveObject()});
  static KResource ins = KResource._();

  BuildContext get ctx => context!;
  Size get size => designSize!;

  void set({BuildContext? ctx, Size? s,KResponsiveObject? responsive}){
    context = ctx;
    designSize = s;
    this.responsive =responsive??this.responsive;
  }

}