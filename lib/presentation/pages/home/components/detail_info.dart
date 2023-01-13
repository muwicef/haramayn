import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({
    required this.svgImage,
    required this.title,
    required this.detail,
    Key? key,
  }) : super(key: key);
  final String svgImage, title, detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 3, 0, 3),
      child: Row(
        children: [
          SvgPicture.asset(svgImage),
          const SizedBox(width: 14),
          RichText(
            text: TextSpan(
              text: title,
              style: AppTextStyles.openStyle16s.copyWith(color: AppColors.textColor4),
              children: [
                TextSpan(
                  text: detail,
                  style: AppTextStyles.openStyle16b.copyWith(color: AppColors.textColor4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
