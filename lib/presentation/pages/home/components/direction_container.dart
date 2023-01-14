import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haramayn/presentation/routes.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_text_styles.dart';

class DirectionContainer extends StatelessWidget {
  const DirectionContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.infoDirectionPage),
      child: Container(
        padding: const EdgeInsets.all(20),
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
                  style: AppTextStyles.montStyle14s,
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
              'home-page'.tr(gender: 'direction-place'),
              style: AppTextStyles.montStyle19b,
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                SvgPicture.asset(AppAssets.icons.peoples),
                const SizedBox(width: 6),
                RichText(
                  text: TextSpan(
                    text: 'home-page'.tr(gender: 'empty-count'),
                    style: AppTextStyles.openStyle14r.copyWith(color: Colors.white),
                    children: [
                      TextSpan(
                        text: '5',
                        style: AppTextStyles.openStyle14b,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
