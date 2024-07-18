import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/utils/CustomDimension.dart';

class AppTopWidget extends StatelessWidget {
  const AppTopWidget({
    required this.backVisibility,
    super.key,
  });

  final bool backVisibility;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: CustomDimensions.defaultTopHeaderImageHeight,
          width: double.infinity,
          child: Image.asset(
            "lib/assets/images/wave_top.png",
            fit: BoxFit.fill,
          ),
        ),
        if (backVisibility) ...[
          Positioned(
            top: CustomDimensions.defaultSmallSpace,
            left: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {Get.back();},
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
