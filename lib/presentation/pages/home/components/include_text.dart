import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_styles.dart';

class InludeText extends StatelessWidget {
  const InludeText({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\u2022   $title',
      style: AppTextStyles.openStyle14b,
    );
  }
}
