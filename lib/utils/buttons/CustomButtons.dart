import 'package:flutter/material.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/CustomDimension.dart';
import 'package:interview/utils/style/CustomTextStyles.dart';

class PrimaryFilledButton extends StatelessWidget {
  const PrimaryFilledButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isExpanded,
  });

  final String label;
  final VoidCallback onPressed;
  final bool? isExpanded;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all<Color>(CustomColors.primaryColor),
        padding: CustomDimensions.defaultButtonPadding,
        minimumSize: WidgetStateProperty.all(
          Size(
            CustomDimensions.defaultMinimumButtonWidth,
            CustomDimensions.defaultMinimumButtonHeight,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: normalWhiteButtonTextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class WhiteFilledButton extends StatelessWidget {
  const WhiteFilledButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
        side: WidgetStateProperty.all<BorderSide>(
            const BorderSide(width: .5, color: CustomColors.greyColor)),
        padding: CustomDimensions.defaultButtonPadding,
        minimumSize: WidgetStateProperty.all(
          const Size(CustomDimensions.defaultMinimumButtonWidth,
              CustomDimensions.defaultMinimumButtonHeight),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: normalDarkButtonTextStyle(),
      ),
    );
  }
}
