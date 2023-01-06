import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haramayn/core/constants/app_assets.dart';

import '../../routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    Future.delayed(
      const Duration(milliseconds: 1500),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.welcomePage,
        (_) => false,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Center(
          child: Image.asset(
            width: 156,
            AppAssets.images.logo,
          ),
        ),
      ),
    );
  }
}
