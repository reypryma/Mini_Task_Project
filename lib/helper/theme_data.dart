import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

InputDecoration inputDecoration(
    BuildContext context, {
      IconData? prefixIcon,
      Widget? suffixIcon,
      String? labelText,
      double? borderRadius,
      String? hintText,
    }) {
  return InputDecoration(
    counterText: "",
    contentPadding: const EdgeInsets.only(left: 12, bottom: 10, top: 10, right: 10),
    labelText: labelText,
    labelStyle: secondaryTextStyle(),
    alignLabelWithHint: true,
    hintText: hintText.validate(),
    hintStyle: secondaryTextStyle(),
    isDense: true,
    prefixIcon: prefixIcon != null ? Icon(prefixIcon, size: 16, color:gray) : null,
    suffixIcon: suffixIcon.validate(),
    enabledBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? defaultRadius),
      borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? defaultRadius),
      borderSide: const BorderSide(color: Colors.red, width: 0.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? defaultRadius),
      borderSide: const BorderSide(color: Colors.red, width: 1.0),
    ),
    errorMaxLines: 2,
    errorStyle: primaryTextStyle(color: Colors.red, size: 12),
    focusedBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? defaultRadius),
      borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
    ),
    filled: true,
    fillColor: lawnGreen.withOpacity(.2),
  );
}