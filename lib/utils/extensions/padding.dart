import 'package:flutter/rendering.dart';

class HomePadding extends EdgeInsets {
  const HomePadding.low() : super.all(10.0);
  const HomePadding.medium() : super.all(15.0);
  const HomePadding.hight() : super.all(20.0);
  const HomePadding.special(double left, double right)
      : super.only(left: left, right: right);
}
