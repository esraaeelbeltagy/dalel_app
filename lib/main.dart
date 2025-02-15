import 'package:dalel_app/dalel_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
        
      ],
      path:
          'assets/translations/', // <-- change the path of the translation files
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
    child: const DalelApp()));
}

