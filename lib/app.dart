import 'package:flutter/material.dart';
import 'package:news_application/src/config/app_routers.dart';
import 'package:news_application/src/config/app_themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
    );
  }
}