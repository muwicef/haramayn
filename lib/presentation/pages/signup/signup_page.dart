import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../components/enter_button.dart';
import '../../components/input_field.dart';
import '../../routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                'Ro\'yxatdan o\'tish',
                style: AppTextStyles.montStyle24b,
              ),
              SizedBox(height: 29.h),
              InputField(
                hintText: 'F.I.Sh',
                iconPath: AppAssets.icons.user,
              ),
              SizedBox(height: 18.h),
              InputField(
                hintText: '+998',
                iconPath: AppAssets.icons.phone,
              ),
              SizedBox(height: 18.h),
              InputField(
                hintText: 'Parol',
                iconPath: AppAssets.icons.lock,
              ),
              SizedBox(height: 222.82.h),
              EnterButton(
                title: 'Ro\'yxatdan o\'tish',
                onTap: () => Navigator.pushNamed(context, Routes.mainPage),
              ),
              SizedBox(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Akkountingiz mavjudmi? ',
                    style: AppTextStyles.openStyle14r,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.loginPage),
                    child: Text(
                      'Tizimga kirish',
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
