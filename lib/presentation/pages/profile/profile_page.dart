import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haramayn/core/constants/app_assets.dart';
import 'package:haramayn/core/constants/app_colors.dart';
import 'package:haramayn/core/constants/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 31,
                child: Image.asset(AppAssets.images.avatar),
              ),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Islomjon Olimjonov',
                    style: AppTextStyles.headingStyle3.copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '+998 93 990-90-90',
                    style: AppTextStyles.normalTextStyle1,
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_vert),
            ],
          ),
          SizedBox(height: 13.h),
          Text(
            'Balas: 1500\$',
            style: AppTextStyles.headingStyle3.copyWith(fontSize: 16),
          ),
          SizedBox(height: 17.h),
          Text(
            'Ma\'lumotlar',
            style: AppTextStyles.headingStyle6,
          ),
          SizedBox(height: 4.h),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              image: DecorationImage(
                image: AssetImage(AppAssets.images.informationBg),
                fit: BoxFit.contain,
                alignment: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Ma\'lumotlar',
                      style: AppTextStyles.sliderTextStyle,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Qisqa',
                            style: AppTextStyles.forgotpswdStyle,
                          ),
                          SizedBox(width: 16.w),
                          SvgPicture.asset(AppAssets.icons.arrowTop),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Text(
                  'Filial: Andijon',
                  style: AppTextStyles.normalTextStyle2.copyWith(color: Colors.white),
                ),
                SizedBox(height: 6.h),
                Text(
                  'Rasmiylashtiruvchi agent: Islomjon Qodirov',
                  style: AppTextStyles.normalTextStyle2.copyWith(color: Colors.white),
                ),
                SizedBox(height: 6.h),
                Text(
                  'Summa: \$1500',
                  style: AppTextStyles.normalTextStyle2.copyWith(color: Colors.white),
                ),
                SizedBox(height: 6.h),
                Text(
                  'Ellik boshi: Qodir Islomjonov',
                  style: AppTextStyles.normalTextStyle2.copyWith(color: Colors.white),
                ),
                SizedBox(height: 22.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
