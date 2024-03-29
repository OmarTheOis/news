import 'package:flutter/material.dart';
import 'package:newsapp/core/config/page_route_name.dart';
import 'package:newsapp/core/config/routes.dart';

import 'core/config/app-theme.dart';

void main() {
  runApp(const MyApp());
}
GlobalKey<NavigatorState> navigatorkey=GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Appthemes.apptheme,
      initialRoute: PageRouteName.initial,
      onGenerateRoute: Routes.onGenrateRoutes,
      themeMode: ThemeMode.light,
      navigatorKey: navigatorkey,
      debugShowCheckedModeBanner: false,

    );
  }
}
