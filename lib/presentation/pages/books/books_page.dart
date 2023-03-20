import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:haramayn/core/provider/all_guide_provider.dart';
import 'package:haramayn/presentation/routes.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_text_styles.dart';
import 'components/blessing_column.dart';
import 'components/guide_row.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  final String pageTitle = 'useful-page';

  @override
  Widget build(BuildContext context) {
    var data = context.watch<AllGuidesProvider>();

    return Provider(
      create: (_) => AllGuidesProvider(),
      child: data.isLoading
          ? myViewver(context, data)
          : const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
    );
  }

  SingleChildScrollView myViewver(
      BuildContext context, AllGuidesProvider data) {
    return SingleChildScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          InkWell(
            onTap: () => Navigator.pushNamed(context, Routes.allBlessingsPage),
            child: Row(
              children: [
                Text(
                  pageTitle.tr(gender: 'title1'),
                  style: AppTextStyles.montStyle21b,
                ),
                const Spacer(),
                Text(pageTitle.tr(gender: 'other'),
                    style: AppTextStyles.openStyle12r),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          const Divider(
            height: 1,
            color: Color(0xFF2BAD39),
          ),
          SizedBox(height: 29.h),
          const BlessingColumn(
            title: 'َﻦﻳِمَلٰعْلا ِّبَر ِهَّلِل ُدْمَحْلا',
            titleMeaning:
                '[All] praise is [due] to Allah, Lord of the worlds -',
          ),
          SizedBox(height: 27.45.h),
          const BlessingColumn(
            title: 'ِﻢﻳِحَّﺮﻟا ِنٰمْحَّﺮﻟا',
            titleMeaning: 'The Entirely Merciful, the Especially Merciful,',
          ),
          SizedBox(height: 22.h),
          InkWell(
            onTap: () => Navigator.pushNamed(context, Routes.allGuidesPage),
            child: Row(
              children: [
                Text(
                  pageTitle.tr(gender: 'title2'),
                  style: AppTextStyles.montStyle21b,
                ),
                const Spacer(),
                Text(
                  pageTitle.tr(gender: 'other'),
                  style: AppTextStyles.openStyle12r,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          const Divider(
            height: 1,
            color: Color(0xFF2BAD39),
          ),
          ...[
            data.allGuides.data!.length >= 3
                ? Column(
                    children: [
                      GuideRow(
                        title: data.guideData.data![0].title!,
                        subtitle: data.guideData.data![0].textC!,
                      ),
                      GuideRow(
                        title: data.guideData.data![1].title!,
                        subtitle: data.guideData.data![1].textC!,
                      ),
                      GuideRow(
                        title: data.guideData.data![2].title!,
                        subtitle: data.guideData.data![2].textC!,
                      ),
                    ],
                  )
                : data.allGuides.data!.length == 2
                    ? Column(
                        children: [
                          GuideRow(
                            title: data.guideData.data![0].title!,
                            subtitle: data.guideData.data![0].textC!,
                          ),
                          GuideRow(
                            title: data.guideData.data![1].title!,
                            subtitle: data.guideData.data![1].textC!,
                          ),
                        ],
                      )
                    : data.allGuides.data!.length == 1
                        ? GuideRow(
                            title: data.guideData.data![0].title!,
                            subtitle: data.guideData.data![0].textC!,
                          )
                        : const SizedBox(),
          ],
        ],
      ),
    );
  }
}
