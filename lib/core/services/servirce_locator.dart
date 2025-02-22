import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator(){
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit());
  // gitIt.registerLazySingleton<Navigation>(() => Navigation());
  // gitIt.registerLazySingleton<AppStrings>(() => AppStrings());
  // gitIt.registerLazySingleton<AppStyles>(() => AppStyles());
}