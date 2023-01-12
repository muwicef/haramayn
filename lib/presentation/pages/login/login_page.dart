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
                'Tizimga kirish',
                style: AppTextStyles.headingStyle1,
              ),
              SizedBox(height: 29.h),
              InputField(
                hintText: 'Telefon raqam',
                iconPath: AppAssets.icons.phone,
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
              EnterButton(
                title: 'Kirish',
                onTap: () => Navigator.pushNamed(context, Routes.mainPage),
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
                    onTap: () => Navigator.pushNamed(context, Routes.signupPage),
                    child: Text(
                      'Yangi ro\'yxatdan o\'ting',
                      style: AppTextStyles.normalTextStyle2,
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
