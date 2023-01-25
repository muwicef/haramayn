import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/app_colors.dart';

class PrayContainer extends StatelessWidget {
  const PrayContainer({
    required this.title,
    required this.imagePath,
    required this.time,
    this.isActive = false,
    Key? key,
  }) : super(key: key);
  final String title, time, imagePath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        color: isActive ? AppColors.prayActiveColor.withOpacity(0.21) : Colors.transparent,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        children: [
          SvgPicture.asset(imagePath),
          SizedBox(width: 16.07.w),
          Text(
            title,
            style: AppTextStyles.montStyle16s,
          ),
          const Spacer(),
          Text(
            time,
            style: isActive
                ? AppTextStyles.montStyle15m.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                  )
                : AppTextStyles.montStyle15b,
          ),
        ],
      ),
    );
  }
}
