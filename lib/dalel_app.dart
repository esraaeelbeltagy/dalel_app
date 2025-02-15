import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      //* for localization
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
     home: Scaffold(
       body: Center(
         child: Text('Dalel App'),
       ),
     ),
    );
  }
}
