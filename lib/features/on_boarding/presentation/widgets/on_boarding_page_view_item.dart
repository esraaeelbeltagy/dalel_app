import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_on_boarding_image.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required PageController pageController,
    required this.onBoardingModel,
  }) : _pageController = pageController;

  final PageController _pageController;
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOnbaordingImage(onBoardingModel: onBoardingModel),
        SizedBox(height: 24),
        CustomSmoothPageIndicator(pageController: _pageController),
        Flexible(child: SizedBox(height: 32)),
        Text(
          onBoardingModel.title,
          style: TextStyles.poppinsMedium24Black(context),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Flexible(child: SizedBox(height: 16)),
        Text(
          onBoardingModel.description,
          style: TextStyles.poppinsLight16Black(context),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 16,),
      ],
    );
  }
}