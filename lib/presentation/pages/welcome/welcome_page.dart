import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haramayn/presentation/routes.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80.h),
            Image.asset(
              AppAssets.images.logo,
              width: 156.w,
              height: 107.14.h,
            ),
            SizedBox(height: 16.61.h),
            Text(
              'Sizning Yo\'l\nboshchingiz',
              style: AppTextStyles.welcomeStyle,
            ),
            SizedBox(height: 34.4.h),
            SizedBox(
              height: 491.08.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(33.3204),
                    ),
                    child: Image.asset(
                      AppAssets.images.welcomeBg,
                      height: 467.2.h,
                      width: 326.w,
                    ),
                  ),
                  Positioned(
                    bottom: 0.h,
                    child: TextButton(
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.15)),
                        ),
                        backgroundColor: MaterialStatePropertyAll(AppColors.secondaryColor),
                      ),
                      onPressed: () => Navigator.pushNamed(context, Routes.loginPage),
                      child: Text(
                        'Ishga tushirish',
                        style: AppTextStyles.welcomeBtnStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 57.77.h),
            SvgPicture.asset(AppAssets.icons.loading)
          ],
        ),
      ),
    );
  }
}
