import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_text_styles.dart';
import 'components/welcome_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'SplashHero',
                child: Image.asset(
                  AppAssets.images.logo,
                  width: 174.w,
                  height: 119.5.h,
                ),
              ),
              SizedBox(height: 8.5.h),
              Text(
                'Sizning yo\'l boshchingiz',
                style: AppTextStyles.montStyle18r,
              ),
              SizedBox(height: 52.15.h),
              SizedBox(
                height: 490.85.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(
                      AppAssets.images.welcomeBg,
                      height: 467.2.h,
                      width: 326.w,
                    ),
                    Positioned(
                      bottom: 0.h,
                      child: const WelcomeButton(buttonTitle: 'Ishga tushirish'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
