import 'package:flutter/material.dart';

import 'config/resources/theme_manager.dart';
import 'config/routes/route_generator.dart';
import 'config/routes/route_names.dart';

final _navigatorKey = GlobalKey<NavigatorState>();
NavigatorState get navigator => _navigatorKey.currentState!;

class RestroApp extends StatelessWidget {
  const RestroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: getApplicationTheme(),
      initialRoute: RouteNames.homeRoute,
    );
  }
}
