import 'package:flutter/material.dart';

class AssetsConstants {
  static const String _imagePath = 'assets/images';
  static const String courseLogo = '$_imagePath/course.png';
}

Widget clipImage(){
  return ClipRRect(
    borderRadius: BorderRadius.circular(300.0),
    child: Image.asset(
        AssetsConstants.courseLogo,
      width: 150,
      height: 150,
    ),
  );
}