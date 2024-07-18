import 'package:flutter/material.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/style/CustomTextStyles.dart';

InputDecoration outlinedInputDecoration({String? hint}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: CustomColors.greyColor),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: CustomColors.greyColor.withOpacity(0.5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: CustomColors.greyColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.red),
    ),
    labelText: hint,
    hintStyle: smallHintTextStyle(),
    labelStyle: smallDarkTextStyle(),
    errorStyle: const TextStyle(height: 0),
    fillColor: CustomColors.white,
    filled: true,
    errorMaxLines: 2,
  );
}