import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haramayn/core/constants/app_assets.dart';
import 'package:haramayn/core/constants/app_colors.dart';
import 'package:haramayn/core/constants/app_text_styles.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '18.10.2023',
            style: AppTextStyles.openStyle12b,
          ),
          const SizedBox(height: 4),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.images.informationBg),
                fit: BoxFit.contain,
                alignment: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(19),
              color: AppColors.primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.icons.location2,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Madina',
                      style: AppTextStyles.openStyle18b,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.icons.time6,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '16:00 - 22:00',
                      style: AppTextStyles.montStyle13r,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Madinaga avtobusda yo\'l olamiz',
                  style: AppTextStyles.montStyle13r,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
