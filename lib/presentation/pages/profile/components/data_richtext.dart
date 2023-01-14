import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_styles.dart';

class DataRichText extends StatelessWidget {
  const DataRichText({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title: ',
        style: AppTextStyles.openStyle14s.copyWith(color: Colors.white),
        children: [
          TextSpan(
            text: subtitle,
            style: AppTextStyles.openStyle14b.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
