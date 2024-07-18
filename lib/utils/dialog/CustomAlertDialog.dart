import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/buttons/CustomButtons.dart';
import 'package:interview/utils/style/CustomTextStyles.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.message,
    required this.positiveLabel,
    required this.onPositivePressed,
  });

  final String title;
  final String message;
  final String positiveLabel;
  final VoidCallback onPositivePressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      insetPadding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
      backgroundColor: CustomColors.white,
      surfaceTintColor: CustomColors.greyColor.withOpacity(0.05),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              title,
              style: titlePrimarySemiBoldTextStyle(),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Text(
              message,
              style: normalDarkTextStyle(),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryFilledButton(
                onPressed: () {
                  Get.back();
                  onPositivePressed();
                },
                label: positiveLabel,
              ),
            ],
          )
        ],
      ),
    );
  }
}
