import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../components/enter_button.dart';
import '../../routes.dart';

class SelectLanguagePage extends StatelessWidget {
  const SelectLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.images.logo,
                  width: 174.w,
                  height: 119.5.h,
                ),
                SizedBox(
                  height: 170.5.h,
                ),
                Text(
                  'Matn turini tanlang',
                  style: AppTextStyles.headingStyle1,
                ),
                SizedBox(height: 18.82.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.inputBorderColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppAssets.icons.language),
                      Text('Lotin alifbosida', style: AppTextStyles.mediumTextStyle1),
                      SvgPicture.asset(AppAssets.icons.arrowBottom),
                    ],
                  ),
                ),
                SizedBox(height: 242.h),
                EnterButton(
                  title: 'Davom etish',
                  onTap: () => Navigator.pushNamed(context, Routes.loginPage),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
