
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required PageController pageController,
    required this.onBoardingModel,
  }) : _pageController = pageController;

  final PageController _pageController;
  final OnBoardingModel onBoardingModel  ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 290),
          child: AspectRatio(
            aspectRatio: 343 / 290,
            child: Image.asset(onBoardingModel.image),
          ),
        ),
        SizedBox(height: 24),
        CustomSmoothPageIndicator(pageController: _pageController),
        SizedBox(height: 32),
        Text(
          onBoardingModel.title,
          style: AppTextStyles.poppinsMedium24Black(context),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 16),
        Text(
          onBoardingModel.description,
          style: AppTextStyles.poppinsLight16Black(context),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
