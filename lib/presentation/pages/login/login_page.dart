import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../components/enter_button.dart';
import '../../components/input_field.dart';
import '../../routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  AppAssets.images.logo,
                  width: 174.h,
                  height: 119.5.h,
                ),
              ),
              SizedBox(height: 88.68.h),
              Text(
                'login-page'.tr(gender: 'title'),
                style: AppTextStyles.montStyle24b,
              ),
              SizedBox(height: 29.h),
              InputField(
                hintText: 'login-page'.tr(gender: 'phone'),
                iconPath: AppAssets.icons.phone,
              ),
              SizedBox(height: 18.h),
              InputField(
                hintText: 'login-page'.tr(gender: 'password'),
                iconPath: AppAssets.icons.lock,
              ),
              SizedBox(height: 13.h),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'login-page'.tr(gender: 'forgot'),
                  style: AppTextStyles.openStyle12s,
                ),
              ),
              SizedBox(height: 222.82.h),
              EnterButton(
                title: 'login-page'.tr(gender: 'enter'),
                onTap: () => Navigator.pushNamed(context, Routes.mainPage),
              ),
              SizedBox(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'login-page'.tr(gender: 'no-account'),
                    style: AppTextStyles.openStyle14r,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.signupPage),
                    child: Text(
                      'login-page'.tr(gender: 'new-account'),
                      style: AppTextStyles.openStyle14s,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
