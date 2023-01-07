import 'package:flutter/material.dart';
import 'package:haramayn/core/constants/app_colors.dart';

class AppTextStyles {
  static TextStyle welcomeStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18.69,
    fontWeight: FontWeight.w400,
    color: AppColors.welcomeTextColor,
  );

  static TextStyle welcomeBtnStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18.69,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle headingStyle1 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
  );

  static TextStyle headingStyle2 = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle hintTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.hintTextColor,
  );

  static TextStyle forgotpswdStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );

  static TextStyle normalTextStyle1 = const TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
}
