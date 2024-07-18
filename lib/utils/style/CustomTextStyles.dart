import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/utils/CustomColors.dart';
import 'package:interview/utils/CustomDimension.dart';


/// title
///
TextStyle titleDarkSemiBoldTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.textColor,
    fontSize: CustomDimensions.defaultTextSizeTitle,
    fontWeight: FontWeight.w600,
  );
}

TextStyle titlePrimarySemiBoldTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.primaryColor,
    fontSize: CustomDimensions.defaultTextSizeTitle,
    fontWeight: FontWeight.w600,
  );
}

/// big
///
TextStyle bigPrimaryTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.primaryColor,
    fontSize: CustomDimensions.defaultTextSizeBig,
    fontWeight: FontWeight.w600,
  );
}

TextStyle bigDarkSemiBoldTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.textColor,
    fontSize: CustomDimensions.defaultTextSizeBig,
    fontWeight: FontWeight.w600,
  );
}

/// normal
///

TextStyle normalDarkTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.textColor,
    fontSize: CustomDimensions.defaultTextSizeNormal,
    fontWeight: FontWeight.w500,
  );
}

TextStyle normalPrimaryTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.primaryColor,
    fontSize: CustomDimensions.defaultTextSizeNormal,
    fontWeight: FontWeight.w600,
  );
}

TextStyle normalHintTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.textHintColor,
    fontSize: CustomDimensions.defaultTextSizeNormal,
    fontWeight: FontWeight.w400,
  );
}

TextStyle normalWhiteButtonTextStyle() {
  return GoogleFonts.poppins(
    color: Colors.white,
    fontSize: CustomDimensions.defaultTextSizeNormal,
    fontWeight: FontWeight.w500,
  );
}

TextStyle normalDarkButtonTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.textColor,
    fontSize: CustomDimensions.defaultTextSizeNormal,
    fontWeight: FontWeight.w500,
  );
}

/// small
///

TextStyle smallDarkTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.textColor,
    fontSize: CustomDimensions.defaultTextSizeSmall,
    fontWeight: FontWeight.w400,
  );
}

TextStyle smallHintTextStyle() {
  return GoogleFonts.poppins(
    color: CustomColors.textHintColor,
    fontSize: CustomDimensions.defaultTextSizeSmall,
    fontWeight: FontWeight.w400,
  );
}
