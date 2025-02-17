import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingNavBar extends StatelessWidget {
  const OnBoardingNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppStrings.skip,
                  style: AppTextStyles.poppinsRegular16Black(context),
                ),
              );
  }
}