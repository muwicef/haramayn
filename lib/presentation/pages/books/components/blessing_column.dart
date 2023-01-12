import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class BlessingColumn extends StatelessWidget {
  const BlessingColumn({
    required this.title,
    required this.titleMeaning,
    Key? key,
  }) : super(key: key);
  final String title, titleMeaning;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            title,
            style: AppTextStyles.amirStyle20b,
          ),
        ),
        const SizedBox(height: 18.3),
        Text(
          titleMeaning,
          style: AppTextStyles.montStyle18r,
        ),
        const SizedBox(height: 18.3),
        Divider(color: AppColors.dividerColor.withOpacity(0.35)),
      ],
    );
  }
}
