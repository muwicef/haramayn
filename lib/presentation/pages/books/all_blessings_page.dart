import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_text_styles.dart';
import 'components/blessing_column.dart';

class AllBlessingsPage extends StatelessWidget {
  const AllBlessingsPage({super.key});

  final String pageTitle = 'useful-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle.tr(gender: 'title1'),
          style: AppTextStyles.montStyle20b,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: List.generate(5, (index) {
            return Column(
              children: [
                const BlessingColumn(
                  title: 'َﻦﻳِمَلٰعْلا ِّبَر ِهَّلِل ُدْمَحْلا',
                  titleMeaning: '[All] praise is [due] to Allah, Lord of the worlds -',
                ),
                SizedBox(height: 27.45.h),
              ],
            );
          }),
        ),
      ),
    );
  }
}
