import 'package:flutter/material.dart';
import 'package:webmiss/res/screen_sizes.dart';

Axis getAxis(double width) {
  return width > ScreenSizes.md ? Axis.horizontal :
  Axis.vertical;
}