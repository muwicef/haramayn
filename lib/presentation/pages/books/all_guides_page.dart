import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_text_styles.dart';
import 'components/guide_row.dart';

class AllGuidesPage extends StatelessWidget {
  const AllGuidesPage({super.key});
  final String pageTitle = 'useful-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle.tr(gender: 'title2'),
          style: AppTextStyles.montStyle20b,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: List.generate(
            10,
            (index) => GuideRow(guideNum: index + 1, fileCount: Random.secure().nextInt(20)),
          ),
        ),
      ),
    );
  }
}
