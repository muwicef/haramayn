import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../components/enter_button.dart';
import '../../routes.dart';

enum LanguageType { latin, kirill }

class SelectLanguagePage extends StatefulWidget {
  const SelectLanguagePage({super.key});

  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePageState();
}

class _SelectLanguagePageState extends State<SelectLanguagePage> {
  late LanguageType? languageType;

  Map languages = {
    LanguageType.latin: 'Lotin alifbosi',
    LanguageType.kirill: 'Кирилл алифбоси',
  };

  final jobRoleCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (context.locale.toString() == "uz_latin") {
      languageType = LanguageType.latin;
    } else {
      languageType = LanguageType.kirill;
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 100.h),
              Image.asset(
                AppAssets.images.logo,
                width: 174.w,
                height: 119.5.h,
              ),
              SizedBox(
                height: 170.5.h,
              ),
              Text(
                'select-lang-page'.tr(gender: 'title'),
                style: AppTextStyles.montStyle24b,
              ),
              SizedBox(height: 18.82.h),
              ButtonTheme(
                alignedDropdown: true,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.inputBorderColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.inputBorderColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SvgPicture.asset(AppAssets.icons.language),
                    ),
                  ),
                  value: languageType,
                  borderRadius: BorderRadius.circular(12),
                  isExpanded: true,
                  iconEnabledColor: AppColors.primaryColor,
                  style: AppTextStyles.montStyle16m,
                  items: [
                    DropdownMenuItem(
                      value: LanguageType.latin,
                      child: Center(
                        child: Text(
                          'Lotin alifbosi',
                          style: AppTextStyles.montStyle16m,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: LanguageType.kirill,
                      child: Center(
                        child: Text(
                          'Кирилл алифбоси',
                          style: AppTextStyles.montStyle16m,
                        ),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      languageType = value;
                      if (value == LanguageType.latin) {
                        context.setLocale(const Locale('uz', 'latin'));
                      } else {
                        context.setLocale(const Locale('uz', 'cyrillic'));
                      }
                    });
                  },
                ),
              ),
              SizedBox(height: 242.h),
              EnterButton(
                title: 'select-lang-page'.tr(gender: "continue"),
                onTap: () => Navigator.pushNamed(context, Routes.loginPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
