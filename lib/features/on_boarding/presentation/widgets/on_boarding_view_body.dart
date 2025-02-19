import 'package:dalel_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/on_boarding_page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key, required this.pageController , 
 required this.onPageChanged , 
  });
  final PageController pageController;
  final void Function(int) onPageChanged ; 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
       // height: MediaQuery.of(context).size.height * 0.82,
        child: PageView.builder(
          onPageChanged: onPageChanged,
          physics: BouncingScrollPhysics(),
          controller: pageController,
          itemBuilder:
              (context, index) => OnBoardingPageViewItem(
                pageController: pageController,
                onBoardingModel: onBoardingList[index],
              ),
          itemCount: onBoardingList.length,
        ),
      ),
    );
  }
}
