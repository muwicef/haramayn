import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:haramayn/data/models/guides_model.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/provider/all_guide_provider.dart';
import 'components/guide_row.dart';

class AllGuidesPage extends StatelessWidget {
  const AllGuidesPage({super.key});
  final String pageTitle = 'useful-page';

  @override
  Widget build(BuildContext context) {
    var data = context.watch<AllGuidesProvider>();

    return Provider(
      create: (_) => AllGuidesProvider(),
      child: data.isLoading
          ? myScaffold(data.allGuides)
          : const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
    );
  }

  Scaffold myScaffold(GuidesModel data) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle.tr(gender: 'title2'),
          style: AppTextStyles.montStyle20b,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: List.generate(
            data.data!.length,
            (index) => GuideRow(
                title: data.data![index].title!,
                subtitle: data.data![index].textC!),
          ),
        ),
      ),
    );
  }
}
