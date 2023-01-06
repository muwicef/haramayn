import 'package:flutter/material.dart';
import 'package:haramayn/presentation/pages/splash/splash_page.dart';
import 'package:haramayn/presentation/pages/welcome/welcome_page.dart';

class Routes {
  static const splashPage = '/';
  static const welcomePage = '/welcome';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args = routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case splashPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SplashPage(),
          );
        case welcomePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const WelcomePage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SplashPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SplashPage(),
      );
    }
  }
}
