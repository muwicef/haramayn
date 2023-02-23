import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import 'components/include_text.dart';
import 'components/detail_info.dart';

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Text(
              'Toshkent-Madina',
              style: AppTextStyles.openStyle28b,
            ),
            const SizedBox(height: 10),
            DetailInfo(
              svgImage: AppAssets.icons.infoPlane,
              title: ' Jo\'nab ketadigan sana: ',
              detail: '14 yanvar',
            ),
            DetailInfo(
              svgImage: AppAssets.icons.infoPeoples,
              title: 'Bo\'sh o\'rinlar soni: ',
              detail: '5 ta',
            ),
            DetailInfo(
              svgImage: AppAssets.icons.infoDate,
              title: ' Davomiyligi: ',
              detail: '15 kun',
            ),
            SizedBox(height: 15.h),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.bgColor1,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Text(
                '15 kunlik safar quyidagilarni o\'z ichiga oladi:',
                style: AppTextStyles.openStyle16s,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(AppAssets.images.detailBg),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InludeText(title: 'Olib ketish va olib kelish'),
                  SizedBox(height: 8.h),
                  const InludeText(title: 'Makka va Madina shaharlarida mehmonxona'),
                  SizedBox(height: 8.h),
                  const InludeText(title: 'Zam-Zam suv (5 litr)'),
                  SizedBox(height: 8.h),
                  const InludeText(title: 'Aviachiptalar'),
                  SizedBox(height: 8.h),
                  const InludeText(title: 'Saudia Arabistoni Umra vizasi'),
                  SizedBox(height: 8.h),
                  const InludeText(title: 'Transport xizmati'),
                  SizedBox(height: 8.h),
                  const InludeText(title: 'Firma tomonidan taqdim etiladigan hadyalar'),
                  SizedBox(height: 8.h),
                  const InludeText(title: '3 mahal ovqat'),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            Row(
              children: [
                SvgPicture.asset(AppAssets.icons.infoPrice),
                SizedBox(width: 12.w),
                Text(
                  'Narxi: \$1500',
                  style: AppTextStyles.openStyle16s.copyWith(color: AppColors.textColor4),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Batafsil ma\'lumot uchun qo\'ng\'iroq qiling',
                style: AppTextStyles.openStyle12s.copyWith(color: AppColors.textColor4),
              ),
            ),
            Row(
              children: [
                Text(
                  '+998 (90) 369-80-08',
                  style: AppTextStyles.openStyle28b,
                ),
                const Spacer(),
                InkWell(
                    onTap: () => launchUrl(Uri.parse("tel:+998 90 369 80 08")),
                    child: SvgPicture.asset(AppAssets.icons.dialPhone)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 120, 4),
              child: Divider(
                color: AppColors.primaryColor,
              ),
            ),
            Row(
              children: [
                Text(
                  '+998 (90) 163-41-22',
                  style: AppTextStyles.openStyle28b,
                ),
                const Spacer(),
                InkWell(
                    onTap: () => launchUrl(Uri.parse("tel:+998 90 163 41 22")),
                    child: SvgPicture.asset(AppAssets.icons.dialPhone)),
              ],
            ),
            SizedBox(height: 25.h),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: 'Manzil: ',
                  style: AppTextStyles.openStyle14b.copyWith(color: AppColors.textColor4),
                  children: [
                    TextSpan(
                      text: 'Andijon sh. O’zbekiston ko’chasi 91A',
                      style: AppTextStyles.openStyle14s.copyWith(color: AppColors.textColor4),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                icon: Text(
                  'Xaritadan ochish',
                  style: AppTextStyles.openStyle14s.copyWith(color: Colors.white),
                ),
                label: const Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
