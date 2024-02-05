import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displaySmallInterBlack900 =>
      theme.textTheme.displaySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 36.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallInterBlack90034 =>
      theme.textTheme.displaySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 34.fSize,
      );
  static get displaySmallQuintessentialBlue900 =>
      theme.textTheme.displaySmall!.quintessential.copyWith(
        color: appTheme.blue900,
        fontSize: 34.fSize,
      );
  static get displaySmallQuintessentialCyan800 =>
      theme.textTheme.displaySmall!.quintessential.copyWith(
        color: appTheme.cyan800,
        fontSize: 34.fSize,
      );
  static get displaySmallQuintessentialGreen800 =>
      theme.textTheme.displaySmall!.quintessential.copyWith(
        color: appTheme.green800,
        fontSize: 34.fSize,
      );
  static get displaySmallQuintessentialLime900 =>
      theme.textTheme.displaySmall!.quintessential.copyWith(
        color: appTheme.lime900,
        fontSize: 34.fSize,
      );
  static get displaySmallQuintessentialSecondaryContainer =>
      theme.textTheme.displaySmall!.quintessential.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 34.fSize,
      );
  static get displaySmallQuintessentialff875407 =>
      theme.textTheme.displaySmall!.quintessential.copyWith(
        color: Color(0XFF875407),
        fontSize: 34.fSize,
      );
  static get displaySmallQuintessentialffb98a0f =>
      theme.textTheme.displaySmall!.quintessential.copyWith(
        color: Color(0XFFB98A0F),
        fontSize: 34.fSize,
      );
  // Headline text style
  static get headlineSmallExtraLight => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w200,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallQuintessential =>
      theme.textTheme.headlineSmall!.quintessential.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 24.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.39),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack900Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeExtraLight => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w200,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeQuintessential =>
      theme.textTheme.titleLarge!.quintessential.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeQuintessentialLime800 =>
      theme.textTheme.titleLarge!.quintessential.copyWith(
        color: appTheme.lime800,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeQuintessentialffb98a0f =>
      theme.textTheme.titleLarge!.quintessential.copyWith(
        color: Color(0XFFB98A0F),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeYellowA200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellowA200,
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get quintessential {
    return copyWith(
      fontFamily: 'Quintessential',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
