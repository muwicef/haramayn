import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

class InputField extends StatelessWidget {
  const InputField({
    required this.hintText,
    required this.iconPath,
    this.controller,
    this.keyboardType,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);
  final String hintText, iconPath;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.montStyle16r,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.inputBorderColor),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SvgPicture.asset(iconPath),
        ),
      ),
    );
  }
}
