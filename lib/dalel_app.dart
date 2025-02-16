import 'package:dalel_app/core/routes/app_router.dart';
import 'package:flutter/material.dart';

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,

      routerConfig: router,
    );
  }
}
