import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haramayn/core/constants/app_text_styles.dart';

import '../../../core/constants/app_assets.dart';

class InfoDirectionPage extends StatelessWidget {
  const InfoDirectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SvgPicture.asset(AppAssets.icons.logoWidth),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: SvgPicture.asset(AppAssets.icons.arrowLeft),
          ),
        ),
        leadingWidth: 35,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Text(
              'Toshkent-Madina',
              style: AppTextStyles.openStyle28b,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset(AppAssets.icons.infoPlane),
                const SizedBox(width: 14),
                Text(
                  'Jo\'nab ketiladigan sana - 14 yanvar',
                  style: AppTextStyles.openStyle16s,
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(AppAssets.icons.infoPlane),
                const SizedBox(width: 14),
                Text(
                  'Bo\'sh o\'rinlar',
                  style: AppTextStyles.openStyle16s,
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(AppAssets.icons.infoPlane),
                const SizedBox(width: 14),
                Text(
                  'Jo\'nab ketiladigan sana - 14 yanvar',
                  style: AppTextStyles.openStyle16s,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
