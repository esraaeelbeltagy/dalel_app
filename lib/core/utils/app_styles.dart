import 'package:dalel_app/core/functions/get_responsive_size.dart' show getResponsiveFontSize;
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {

  static TextStyle pacificoRegular64DeepBrown(context) {
    return   TextStyle(
      color: AppColors.deepBrownColor,
      fontSize: getResponsiveFontSize(context, fontSize: 64, ),
      fontFamily: 'Pacifico',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle poppinsRegular16Black(context) {
    return   TextStyle(
      color: AppColors.normalBlackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16, ),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle poppinsMedium24Black(context) {
    return   TextStyle(
      color: AppColors.normalBlackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24, ),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle poppinsLight16Black(context) {
    return   TextStyle(
      color: AppColors.normalBlackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16, ),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
    );
  }
  static TextStyle poppinsMeduim18White(context) {
    return   TextStyle(
      color: AppColors.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18, ),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }
}
