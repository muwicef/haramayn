import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_text_styles.dart';

class GuideRow extends StatelessWidget {
  const GuideRow({
    required this.guideNum,
    required this.fileCount,
    Key? key,
  }) : super(key: key);
  final int guideNum, fileCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          SvgPicture.asset(AppAssets.icons.folder),
          SizedBox(width: 18.28.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yo\'riqnoma #$guideNum',
                style: AppTextStyles.popStyle18m,
              ),
              SizedBox(height: 4.96.h),
              Text(
                '$fileCount fayl mavjud',
                style: AppTextStyles.popStyle13m,
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
