import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haramayn/core/constants/app_assets.dart';
import 'package:haramayn/core/constants/app_colors.dart';
import 'package:haramayn/core/constants/app_text_styles.dart';
import 'package:haramayn/core/provider/user_provider.dart';
import 'package:provider/provider.dart';

import 'components/data_richtext.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  final String pageTitle = 'profile-page';

  @override
  Widget build(BuildContext context) {
    var data = context.read<UserProvider>();

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
                    data.userData.data![0].name!,
                    style: AppTextStyles.openStyle14b.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    data.userData.data![0].phone!,
                    style: AppTextStyles.openStyle14r,
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_vert),
            ],
          ),
          SizedBox(height: 13.h),
          RichText(
            text: TextSpan(
              text: pageTitle.tr(gender: 'balance'),
              style: AppTextStyles.openStyle16b.copyWith(color: Colors.black),
              children: [
                TextSpan(
                  text: '${data.userData.data![0].balans}\$',
                  style: AppTextStyles.openStyle16r.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.h),
          Text(
            pageTitle.tr(gender: 'title-data'),
            style: AppTextStyles.openStyle12b,
          ),
          SizedBox(height: 4.h),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            width: double.maxFinite,
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
                Text(
                  pageTitle.tr(gender: 'title-data'),
                  style: AppTextStyles.openStyle16b,
                ),
                SizedBox(height: 10.h),
                DataRichText(
                  title: pageTitle.tr(gender: 'branch'),
                  subtitle: pageTitle.tr(gender: 'branch-data'),
                ),
                SizedBox(height: 6.h),
                DataRichText(
                  title: pageTitle.tr(gender: 'agent'),
                  subtitle: pageTitle.tr(gender: 'agent-name'),
                ),
                SizedBox(height: 6.h),
                DataRichText(
                  title: pageTitle.tr(gender: 'price'),
                  subtitle: '\$1500',
                ),
                SizedBox(height: 6.h),
                DataRichText(
                  title: pageTitle.tr(gender: 'leader'),
                  subtitle: pageTitle.tr(gender: 'leader-name'),
                ),
                SizedBox(height: 22.h),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            pageTitle.tr(gender: 'title-documents'),
            style: AppTextStyles.openStyle12b,
          ),
          SizedBox(height: 4.h),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                image: DecorationImage(
                  image: AssetImage(AppAssets.images.informationBg),
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            pageTitle.tr(gender: 'see-documents'),
                            style: AppTextStyles.openStyle16b,
                          ),
                          SizedBox(width: 8.w),
                          SvgPicture.asset(
                            AppAssets.icons.eye,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h),
                      Row(
                        children: [
                          SvgPicture.asset(AppAssets.icons.visa),
                          const SizedBox(width: 12.9),
                          SvgPicture.asset(AppAssets.icons.document),
                          const SizedBox(width: 12.9),
                          Text(
                            '(PDF)',
                            style: AppTextStyles.openStyle16b,
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 32,
                    height: 32,
                    padding: const EdgeInsets.all(9),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(AppAssets.icons.arrowRight),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
