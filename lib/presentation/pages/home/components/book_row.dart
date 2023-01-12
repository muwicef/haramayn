import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_text_styles.dart';

class BookRow extends StatelessWidget {
  const BookRow({
    required this.tartibRaqami,
    required this.bookNum,
    required this.seeCount,
    Key? key,
  }) : super(key: key);
  final String tartibRaqami;
  final int bookNum, seeCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
      child: Row(
        children: [
          SvgPicture.asset(tartibRaqami),
          SizedBox(width: 16.83.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kitob #$bookNum',
                style: AppTextStyles.montStyle16s,
              ),
              Text(
                '$seeCount marta ko\'rildi',
                style: AppTextStyles.openStyle12r,
              ),
            ],
          )
        ],
      ),
    );
  }
}
