import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_assets.dart';
import '../../routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Hero(
          tag: 'SplashHero',
          child: Image.asset(
            height: 119.5,
            width: 174.w,
            AppAssets.images.logo,
          ),
        ),
      ),
    );
  }
}
