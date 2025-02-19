import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/services/servirce_locator.dart';
import 'package:dalel_app/dalel_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation
        .portraitDown, // Optional: Allows upside-down portrait mode
  ]);
  setUpServiceLocator();
  //! Here The Initialize of cache .
  await getIt<CacheHelper>().init();
  runApp(const DalelApp());
}
