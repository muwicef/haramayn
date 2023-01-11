import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_text_styles.dart';

class DirectionContainer extends StatelessWidget {
  const DirectionContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.images.tourBg),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppAssets.icons.book),
              const SizedBox(width: 9.22),
              Text(
                '14 yanvar',
                style: AppTextStyles.headingStyle4,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppAssets.icons.arrow2),
              )
            ],
          ),
          SizedBox(height: 28.h),
          Text(
            'Toshkent - Madina',
            style: AppTextStyles.headingStyle5,
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              SvgPicture.asset(AppAssets.icons.peoples),
              const SizedBox(width: 6),
              Text(
                'bo\'sh o\'rinlar soni : 5',
                style: AppTextStyles.normalTextStyle1.copyWith(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
