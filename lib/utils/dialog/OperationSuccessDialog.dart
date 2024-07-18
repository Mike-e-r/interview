import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/buttons/CustomButtons.dart';
import 'package:interview/utils/style/CustomTextStyles.dart';

class OperationSuccessDialog extends StatelessWidget {
  const OperationSuccessDialog({
    super.key,
    required this.imagePath,
    required this.title,
    required this.message,
    required this.positiveLabel,
    required this.onPositivePressed,
  });

  final String imagePath;
  final String title;
  final String message;
  final String positiveLabel;
  final VoidCallback onPositivePressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 32,),
      backgroundColor: CustomColors.white,
      surfaceTintColor: CustomColors.greyColor.withOpacity(0.05),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                child: IconButton(
                  onPressed: () { Get.back(); },
                  icon: const Icon(
                    Icons.close_rounded,
                    size: 40,
                    color: CustomColors.textColor,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 16.0, right: 24.0, bottom: 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  width: 180,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Text(
                    title,
                    style: bigDarkSemiBoldTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Text(
                    message,
                    style: normalDarkTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: PrimaryFilledButton(
                        isExpanded: true,
                        onPressed: () {
                          Get.back();
                          onPositivePressed();
                        },
                        label: positiveLabel.toUpperCase(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
