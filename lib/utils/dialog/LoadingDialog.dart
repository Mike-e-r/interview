import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/style/CustomTextStyles.dart';
import 'package:lottie/lottie.dart';

class LoadingDialog {
  static void showLoadingDialog({required String title}) {
    Get.dialog(
      barrierDismissible: false,
      AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        backgroundColor: CustomColors.white,
        surfaceTintColor: CustomColors.greyColor.withOpacity(0.05),
        insetPadding: const EdgeInsets.all(8),
        content: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 200.0),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    title,
                    style: bigPrimaryTextStyle(),
                  ),
                ),
                const SizedBox(height: 16,),
                ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    CustomColors.primaryColor,
                    BlendMode.srcATop,
                  ),
                  child: Lottie.asset(
                    'lib/assets/json/loading_ring.json',
                    height: 100,
                    width: 100,
                    repeat: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void dismissLoading() {
    if (Get.isDialogOpen == true) {
      Get.back();
    }
  }

  static void showLoading({required String title}) {
    if (Get.isDialogOpen != true) {
      showLoadingDialog(title: title);
    }
  }
}
