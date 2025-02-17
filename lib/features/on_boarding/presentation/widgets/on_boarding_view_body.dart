import 'package:dalel_app/features/on_boarding/presentation/widgets/on_boarding_page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody({super.key});
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        itemBuilder:
            (context, index) => OnBoardingPageViewItem(pageController: _pageController),
        itemCount: 3,
      ),
    );
  }
}
