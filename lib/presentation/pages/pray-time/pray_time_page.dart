import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haramayn/core/constants/app_assets.dart';
import 'package:haramayn/core/constants/app_colors.dart';
import 'package:haramayn/core/constants/app_text_styles.dart';

import 'components/pray_container.dart';

class PrayTimesPage extends StatelessWidget {
  const PrayTimesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 63.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Namoz vaqtlari',
                style: AppTextStyles.montStyle16b,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.icons.location),
                      SizedBox(width: 10.w),
                      Text(
                        'Farg\'ona',
                        style: AppTextStyles.openStyle12s,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.icons.calendarBlack),
                      SizedBox(width: 10.w),
                      Text(
                        '6 - dekabar 2023',
                        style: AppTextStyles.openStyle12s,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 37.h),
          PrayContainer(
            title: 'Bomdod',
            imagePath: AppAssets.icons.time1,
            time: '06:24',
          ),
          PrayContainer(
            title: 'Peshin',
            imagePath: AppAssets.icons.time2,
            time: '12:31',
            isActive: true,
          ),
          PrayContainer(
            title: 'Asr',
            imagePath: AppAssets.icons.time3,
            time: '15:23',
          ),
          PrayContainer(
            title: 'Shom',
            imagePath: AppAssets.icons.time4,
            time: '17:06',
          ),
          PrayContainer(
            title: 'Xufton',
            imagePath: AppAssets.icons.time5,
            time: '18:29',
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 17),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.textColor.withOpacity(0.35),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(39),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppAssets.icons.findCalendar),
                const SizedBox(width: 10),
                Text(
                  'Boshqa kungi namoz vaqtlari',
                  style: AppTextStyles.openStyle14s,
                ),
                const Spacer(),
                SvgPicture.asset(
                  AppAssets.icons.arrowRight,
                )
              ],
            ),
          ),
          SizedBox(height: 40.h)
        ],
      ),
    );
  }
}
