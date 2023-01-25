import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haramayn/core/constants/app_colors.dart';
import 'package:haramayn/core/constants/app_text_styles.dart';
import 'package:haramayn/core/provider/pray_provider.dart';
import 'package:haramayn/data/models/pray_model.dart';
import 'package:haramayn/presentation/pages/pray-time/components/pray_tab.dart';
import 'package:provider/provider.dart';

class PrayTimesPage extends StatefulWidget {
  const PrayTimesPage({super.key});

  @override
  State<PrayTimesPage> createState() => _PrayTimesPageState();
}

class _PrayTimesPageState extends State<PrayTimesPage> with TickerProviderStateMixin {
  final String pageTitle = 'pray-times-page';
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var data = context.watch<PrayProvider>();

    return Provider(
      create: (_) => PrayProvider(),
      child: data.isLoading
          ? prayTimePage(data)
          : const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
    );
  }

  DefaultTabController prayTimePage(PrayProvider data) {
    Timings dataTashkent = data.curTashkentData();
    Timings dataMakkah = data.curMakkahData();
    Timings dataMadina = data.curMadinaData();

    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
            controller: tabController,
            labelStyle: AppTextStyles.montStyle14b,
            unselectedLabelStyle: AppTextStyles.montStyle14m,
            indicatorWeight: 3.16.h,
            indicatorColor: AppColors.primaryColor,
            labelColor: AppColors.primaryColor,
            unselectedLabelColor: AppColors.welcomeTextColor.withOpacity(0.2),
            tabs: const [
              Tab(text: 'Toshkent'),
              Tab(text: 'Madina'),
              Tab(text: 'Makka'),
            ],
          ),
          Flexible(
            child: TabBarView(
              controller: tabController,
              children: [
                PrayTab(data: dataTashkent),
                PrayTab(data: dataMadina),
                PrayTab(data: dataMakkah),
              ],
            ),
          )
        ],
      ),
    );
  }
}
