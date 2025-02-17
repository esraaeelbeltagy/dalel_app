import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routes.dart';
import 'package:dalel_app/core/utils/app_strings.dart' show AppStrings;
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    dalayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppTextStyles.pacificoRegular64DeepBrown(context),
        ),
      ),
    );
  }
}




//* Delayed navigation to the next screen
void dalayedNavigate(context) {
  Future.delayed(const Duration(seconds: 2), () {
    customNavigateWithReplacement(context, AppRoutes.onBoardingView);
  });
}
