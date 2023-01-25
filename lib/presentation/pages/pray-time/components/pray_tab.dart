import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/pray_model.dart';
import 'pray_container.dart';

class PrayTab extends StatelessWidget {
  const PrayTab({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String pageTitle = 'pray-times-page';
  final Timings data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          PrayContainer(
            title: pageTitle.tr(gender: 'pray1'),
            imagePath: AppAssets.icons.time1,
            time: data.fajr!,
          ),
          PrayContainer(
            title: pageTitle.tr(gender: 'pray2'),
            imagePath: AppAssets.icons.time2,
            time: data.dhuhr!,
            isActive: true,
          ),
          PrayContainer(
            title: pageTitle.tr(gender: 'pray3'),
            imagePath: AppAssets.icons.time3,
            time: data.asr!,
          ),
          PrayContainer(
            title: pageTitle.tr(gender: 'pray4'),
            imagePath: AppAssets.icons.time4,
            time: data.maghrib!,
          ),
          PrayContainer(
            title: pageTitle.tr(gender: 'pray5'),
            imagePath: AppAssets.icons.time5,
            time: data.isha!,
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
                  pageTitle.tr(gender: 'other-times'),
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
