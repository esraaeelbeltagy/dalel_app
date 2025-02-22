import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingNavBar extends StatelessWidget {
  const OnBoardingNavBar({super.key , 
  required this.onTap
  });
final void Function()? onTap ; 
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap : onTap , 
        child: Text(
          AppStrings.skip,
          style: TextStyles.poppinsRegular16Black(context),
        ),
      ),
    );
  }
}
