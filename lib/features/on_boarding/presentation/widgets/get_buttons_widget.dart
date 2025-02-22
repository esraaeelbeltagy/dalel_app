
import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routes.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/functions/on_boarding_functions.dart';
import 'package:flutter/material.dart';

class GetButtonsWidget extends StatelessWidget {
  const GetButtonsWidget({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });
  final int currentIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingList.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
               onBoardingVisited();
              customReplacementNavigate(context, AppRoutes.signUpView);
            },
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
               onBoardingVisited();
              customReplacementNavigate(context, AppRoutes.signInView);
            },
            child: Text(
              AppStrings.loginNow,
              style: TextStyles.poppinsRegular16Black(context).copyWith(
                color: AppColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primaryColor,
                decorationThickness: 1.5,
              ),
            ),
          ),
          SizedBox(height: 10,)
        ],
      );
    } else {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.next,
            onPressed: () {
              pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
          SizedBox(height: 17),
        ],
      );
    }
  }
}
