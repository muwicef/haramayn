import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../routes.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    required this.buttonTitle,
    Key? key,
  }) : super(key: key);

  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 30.w, vertical: 17.h)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.15)),
        ),
        backgroundColor: MaterialStatePropertyAll(AppColors.textColor),
      ),
      onPressed: () => Navigator.pushNamed(context, Routes.selectLangPage),
      child: Text(
        buttonTitle,
        style: AppTextStyles.welcomeBtnStyle,
      ),
    );
  }
}
