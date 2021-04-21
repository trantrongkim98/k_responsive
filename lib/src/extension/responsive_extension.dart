import 'package:k_responsive/k_responsive.dart';

extension IntResponsive on int {
  double get hSafe => KAuto().setSafeHeight(this.toDouble());
  double get fSafe => KAuto().setSafeFont(this.toDouble());
  double get h => KAuto().setHeight(this.toDouble());
  double get w => KAuto().setWidth(this.toDouble());
  double get f => KAuto().setFont(this.toDouble());
  double width({double? max,double? min}) => KAuto().setWidth(this.toDouble(),max: max,min:min);
  double height({double? max,double? min}) => KAuto().setHeight(this.toDouble(),max: max,min:min);
  double font({double? max,double? min}) => KAuto().setFont(this.toDouble(),max: max,min:min);
  double heightSafe({double? max,double? min}) => KAuto().setSafeHeight(this.toDouble(),max: max,min:min);
  double fontSafe({double? max,double? min}) => KAuto().setSafeFont(this.toDouble(),max: max,min:min);

}

extension DoubleResponsive on double {
  double get hSafe => KAuto().setSafeHeight(this);
  double get fSafe => KAuto().setSafeFont(this);
  double get h => KAuto().setHeight(this);
  double get w => KAuto().setWidth(this);
  double get f => KAuto().setFont(this);
  double width({double? max,double? min}) => KAuto().setWidth(this,max: max,min:min);
  double height({double? max,double? min}) => KAuto().setHeight(this,max: max,min:min);
  double font({double? max,double? min}) => KAuto().setFont(this,max: max,min:min);
  double heightSafe({double? max,double? min}) => KAuto().setSafeHeight(this,max: max,min:min);
  double fontSafe({double? max,double? min}) => KAuto().setSafeFont(this,max: max,min:min);
}
