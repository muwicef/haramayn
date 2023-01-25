import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import 'components/direction_container.dart';
import 'components/book_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: [
                            Text(
                              'Ramazon — hijriy yil hisobining toʻqqizinchi oyi. Islom dinida Ramazon oyida Alloh Muhammadga Qur’onni vahiy qilgan deb talqin etiladi. Shu sababli, Ramazon muqaddas oy hisoblanadi, bu oy davomida dindorlarga ro’za tutish buyuriladi.',
                              style: AppTextStyles.openStyle16s,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?',
                              style: AppTextStyles.openStyle16s,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?',
                              style: AppTextStyles.openStyle16s,
                            ),
                          ],
                          options: CarouselOptions(
                            height: 132.h,
                            initialPage: 0,
                            viewportFraction: 1,
                            enableInfiniteScroll: true,
                            reverse: false,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        DotsIndicator(
                          dotsCount: 3,
                          position: 1,
                          decorator: DotsDecorator(
                            color: Colors.white.withOpacity(0.4),
                            activeColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    'home-page'.tr(gender: 'direction-title'),
                    style: AppTextStyles.openStyle13b,
                  ),
                  SizedBox(height: 15.h),
                  const DirectionContainer(),
                  SizedBox(height: 16.087.h),
                  const DirectionContainer(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Colors.white,
            leadingWidth: 0,
            pinned: true,
            elevation: 0,
            stretch: false,
            title: TabBar(
              controller: tabController,
              labelStyle: AppTextStyles.montStyle14b,
              unselectedLabelStyle: AppTextStyles.montStyle14m,
              indicatorWeight: 3.16.h,
              indicatorColor: AppColors.primaryColor,
              labelColor: AppColors.primaryColor,
              unselectedLabelColor: AppColors.welcomeTextColor.withOpacity(0.2),
              tabs: [
                Tab(
                  text: 'home-page'.tr(gender: 'book-title'),
                ),
                Tab(
                  text: 'home-page'.tr(gender: 'pray-title'),
                ),
              ],
            ),
          )
        ];
      },
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: TabBarView(
          controller: tabController,
          children: [
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  BookRow(
                    tartibRaqami: AppAssets.icons.time1,
                    bookNum: 1,
                    seeCount: 7,
                  ),
                  Divider(
                    height: 1,
                    color: AppColors.welcomeTextColor.withOpacity(0.2),
                  ),
                  BookRow(
                    tartibRaqami: AppAssets.icons.time2,
                    bookNum: 2,
                    seeCount: 12,
                  ),
                  Divider(
                    height: 1,
                    color: AppColors.welcomeTextColor.withOpacity(0.2),
                  ),
                  BookRow(
                    tartibRaqami: AppAssets.icons.time2,
                    bookNum: 2,
                    seeCount: 12,
                  ),
                ],
              ),
            ),
            const Icon(Icons.directions_car),
          ],
        ),
      ),
    );
  }
}
