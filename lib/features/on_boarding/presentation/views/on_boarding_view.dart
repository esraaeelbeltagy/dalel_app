import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routes.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/get_buttons_widget.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/on_boarding_nav_bar.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 40),
              OnBoardingNavBar(
                onTap: () {
                  customReplacementNavigate(context, AppRoutes.signUpView);
                },
              ),
              OnBoardingViewBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                pageController: _pageController,
              ),
              GetButtonsWidget(
                currentIndex: currentIndex,
                pageController: _pageController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
