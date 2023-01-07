import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haramayn/core/constants/app_colors.dart';
import 'package:haramayn/presentation/routes.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../components/input_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h),
            Center(
              child: Image.asset(
                AppAssets.images.logo,
                width: 174.h,
                height: 119.5.h,
              ),
            ),
            SizedBox(height: 88.61.h),
            Text(
              'Tizimga kirish',
              style: AppTextStyles.headingStyle1,
            ),
            SizedBox(height: 29.h),
            InputField(
              hintText: 'Telefon raqam',
              iconPath: AppAssets.icons.user,
            ),
            SizedBox(height: 18.h),
            InputField(
              hintText: 'Parol',
              iconPath: AppAssets.icons.lock,
            ),
            SizedBox(height: 13.h),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Parol esdan chiqdimi?',
                style: AppTextStyles.forgotpswdStyle,
              ),
            ),
            SizedBox(height: 222.82.h),
            InkWell(
              onTap: () => Navigator.pushNamed(context, Routes.mainPage),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primaryColor,
                      const Color(0xFF307838),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Text(
                  'Kirish',
                  style: AppTextStyles.headingStyle2,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 21.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Akkount yo\'qmi? ',
                  style: AppTextStyles.normalTextStyle1,
                ),
                InkWell(
                  child: Text(
                    'Yangi ro\'yxatdan o\'ting',
                    style: AppTextStyles.normalTextStyle1.copyWith(color: AppColors.textColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
