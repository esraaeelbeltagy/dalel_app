import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routes.dart';
import 'package:dalel_app/core/services/servirce_locator.dart';
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
    bool isOnBaordingVisited  = getIt<CacheHelper>().getData(key: 'isOnBaordingVisited') ?? false ;
    if(isOnBaordingVisited){
  dalayedNavigate(context , AppRoutes.signUpView);
    }else {
  dalayedNavigate(context  ,AppRoutes.onBoardingView);
    }
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: TextStyles.pacificoRegular64DeepBrown(context),
        ),
      ),
    );
  }
}




//* Delayed navigation to the next screen
void dalayedNavigate(context , String path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context,path);
  });
}
