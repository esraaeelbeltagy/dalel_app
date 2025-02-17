
import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 290),
          child: AspectRatio(
            aspectRatio: 343 / 290,
            child: Image.asset(Assets.imagesOnboarding1),
          ),
        ),
        SizedBox(height: 24),
        CustomSmoothPageIndicator(pageController: _pageController),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: Text(
            AppStrings.onBoardingTitle1,
            style: AppTextStyles.poppinsMedium24Black(context),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 16),
        Text(
          AppStrings.onBoardingDescription1,
          style: AppTextStyles.poppinsLight16Black(context),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
