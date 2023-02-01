import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/provider/user_provider.dart';
import '../../../core/constants/app_assets.dart';
import '../../components/enter_button.dart';
import '../../components/input_field.dart';
import '../../routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
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
                'sign-up-page'.tr(gender: 'title'),
                style: AppTextStyles.montStyle24b,
              ),
              SizedBox(height: 29.h),
              InputField(
                hintText: 'sign-up-page'.tr(gender: 'name'),
                iconPath: AppAssets.icons.user,
                controller: nameController,
              ),
              SizedBox(height: 18.h),
              InputField(
                hintText: '+998',
                iconPath: AppAssets.icons.phone,
                controller: phoneController,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 18.h),
              InputField(
                hintText: 'sign-up-page'.tr(gender: 'password'),
                iconPath: AppAssets.icons.lock,
                controller: passwordController,
                isPassword: true,
              ),
              const Spacer(),
              EnterButton(
                title: 'sign-up-page'.tr(gender: 'create'),
                onTap: () => {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    },
                  ),
                  data
                      .registrate(
                    nameController.text,
                    phoneController.text,
                    passwordController.text,
                  )
                      .then(
                    (value) async {
                      if (data.regStatusCode == 201) {
                        data.loadData(phoneController.text, passwordController.text);
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          Routes.mainPage,
                          (_) => false,
                        );
                        final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                        sharedPreferences.setString('phone', phoneController.text);
                        sharedPreferences.setString('password', passwordController.text);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Tizimdan ro\'yxatda o\'tishda xatolik bor'),
                          ),
                        );
                        Navigator.pop(context);
                      }
                    },
                  ),
                },
              ),
              SizedBox(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'sign-up-page'.tr(gender: 'no-account'),
                    style: AppTextStyles.openStyle14r,
                  ),
                  InkWell(
                    onTap: () => {
                      Navigator.pop(context),
                    },
                    child: Text(
                      'sign-up-page'.tr(gender: 'enter-account'),
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
