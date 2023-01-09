import 'package:flutter/material.dart';
import 'package:haramayn/presentation/pages/main/main_page.dart';
import 'package:haramayn/presentation/pages/select-lang/select_lang_page.dart';

import 'pages/login/login_page.dart';
import 'pages/signup/signup_page.dart';
import 'pages/splash/splash_page.dart';
import 'pages/welcome/welcome_page.dart';

class Routes {
  static const splashPage = '/';
  static const welcomePage = '/welcomePage';
  static const loginPage = '/loginPage';
  static const signupPage = '/signupPage';
  static const mainPage = '/mainPage';
  static const selectLangPage = '/selectLangPage';

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
        case loginPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const LoginPage(),
          );
        case signupPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SignUpPage(),
          );
        case mainPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MainPage(),
          );
        case selectLangPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SelectLanguagePage(),
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
