import 'package:flutter/material.dart';

class CustomDimensions {
  static const double defaultSmallSpace = 8.0;
  static const double defaultSpace = 16.0;
  static const double defaultMediumSpace = 24.0;
  static const double defaultBigSpace = 32.0;
  static const double defaultWidgetVerticalSpace = 20.0;

  static const double defaultTextSizeTitle = 22.0;
  static const double defaultTextSizeBig = 18.0;
  static const double defaultTextSizeNormal = 16.0;
  static const double defaultTextSizeSmall = 14.0;

  static const defaultTopHeaderImageHeight = 109.0;
  static const double defaultMinimumButtonWidth = 100;
  static const double defaultMinimumButtonHeight = 40;

  static const double defaultDropdownBorderRadius = 20;

  static WidgetStateProperty<EdgeInsetsGeometry> defaultButtonPadding =
      WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 8, vertical: 0));
}
