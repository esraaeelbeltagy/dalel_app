import 'package:dalel_app/core/routes/app_routes.dart';
import 'package:dalel_app/core/services/servirce_locator.dart';
import 'package:dalel_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    //! spalsh view
    GoRoute(
      path: AppRoutes.splashView,
      name: AppRoutes.splashView,
      builder: (context, state) => SplashView(),
    ),

    //! onBoarding view
    GoRoute(
      path: AppRoutes.onBoardingView,
      name: AppRoutes.onBoardingView,
      builder: (context, state) => OnBoardingView(),
    ),
    //! Sign Up view
    GoRoute(
      path: AppRoutes.signUpView,
      name: AppRoutes.signUpView,
      builder:
          (context, state) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: SignUpView(),
          ),
    ),
    //! Sign In view
    GoRoute(
      path: AppRoutes.signInView,
      name: AppRoutes.signInView,
      builder:
          (context, state) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: SignInView(),
          ),
    ),
  ],
);
