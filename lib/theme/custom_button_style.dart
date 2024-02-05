import 'dart:ui';
import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillTeal => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => OutlinedButton.styleFrom(
        backgroundColor: appTheme.teal90075,
        side: BorderSide(
          color: appTheme.black900.withOpacity(0.1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.h),
        ),
      );
  static ButtonStyle get outlineBlackTL30 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.teal600,
        side: BorderSide(
          color: appTheme.black900.withOpacity(0.1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.h),
        ),
      );
  static ButtonStyle get outlineIndigoTL13 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.red600,
        side: BorderSide(
          color: appTheme.indigo90019,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
