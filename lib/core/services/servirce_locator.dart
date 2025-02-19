import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator(){
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
  // gitIt.registerLazySingleton<Navigation>(() => Navigation());
  // gitIt.registerLazySingleton<AppStrings>(() => AppStrings());
  // gitIt.registerLazySingleton<AppStyles>(() => AppStyles());
}