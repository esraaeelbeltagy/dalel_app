import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/services/servirce_locator.dart';
import 'package:dalel_app/dalel_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation
        .portraitDown, // Optional: Allows upside-down portrait mode
  ]);
 await Supabase.initialize(
    url: AppConstants.SUPABASE_URL,
    anonKey: AppConstants.SUPABASE_ANON_KEY,
  );

  //! Here The Initialize of service locator .
  setUpServiceLocator();
  //! Here The Initialize of cache .
  await getIt<CacheHelper>().init();
  runApp(const DalelApp());
}




class AppConstants {
   static const SUPABASE_URL  = "https://ywwbembkluykhirzxdci.supabase.co" ; 
    static const SUPABASE_ANON_KEY ="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl3d2JlbWJrbHV5a2hpcnp4ZGNpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDAyMjM3MDQsImV4cCI6MjA1NTc5OTcwNH0.hW7pudce9pFyjogWqJQobFtW1aUMblTUwnSoygLFlFo"  ;
}
