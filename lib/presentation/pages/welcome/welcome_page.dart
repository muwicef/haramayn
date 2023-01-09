import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haramayn/presentation/routes.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';

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
              Image.asset(
                AppAssets.images.logo,
                width: 174.w,
                height: 119.5.h,
              ),
              SizedBox(height: 8.5.h),
              Text(
                'Sizning yo\'l boshchingiz',
                style: AppTextStyles.welcomeStyle,
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
                      child: TextButton(
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 30.w, vertical: 17.h)),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.15)),
                          ),
                          backgroundColor: MaterialStatePropertyAll(AppColors.textColor),
                        ),
                        onPressed: () => Navigator.pushNamed(context, Routes.selectLangPage),
                        child: Text(
                          'Ishga tushirish',
                          style: AppTextStyles.welcomeBtnStyle,
                        ),
                      ),
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
