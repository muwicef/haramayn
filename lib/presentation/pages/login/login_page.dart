import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:haramayn/core/constants/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/provider/user_provider.dart';
import '../../../core/constants/app_assets.dart';
import '../../components/enter_button.dart';
import '../../components/input_field.dart';
import '../../routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    phoneController.text = '+998';

    var data = Provider.of<UserProvider>(context, listen: false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.h),
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
                controller: phoneController,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 18.h),
              InputField(
                hintText: 'login-page'.tr(gender: 'password'),
                iconPath: AppAssets.icons.lock,
                controller: passwordController,
                isPassword: true,
              ),
              SizedBox(height: 13.h),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'login-page'.tr(gender: 'forgot'),
                  style: AppTextStyles.openStyle12s,
                ),
              ),
              const Spacer(),
              EnterButton(
                title: 'login-page'.tr(gender: 'enter'),
                onTap: () async {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                        child: CircularProgressIndicator.adaptive(
                          backgroundColor: AppColors.primaryColor,
                        ),
                      );
                    },
                  );
                  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                  sharedPreferences.setString('phone', phoneController.text);
                  sharedPreferences.setString('password', passwordController.text);
                  data.loadData(phoneController.text, passwordController.text).then((value) async => {
                        if (data.userData.error == false)
                          {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              Routes.mainPage,
                              (_) => false,
                            )
                          }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Login yoki parol xato kiritildi'),
                                duration: Duration(milliseconds: 700),
                              ),
                            ),
                            Navigator.pop(context),
                          }
                      });
                },
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
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
