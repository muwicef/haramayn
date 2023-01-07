import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

class InputField extends StatelessWidget {
  const InputField({
    required this.hintText,
    required this.iconPath,
    Key? key,
  }) : super(key: key);
  final String hintText, iconPath;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.hintTextStyle,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.inputBorderColor),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: SvgPicture.asset(iconPath, width: 14.w),
        ),
      ),
    );
  }
}
