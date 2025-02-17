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
}
