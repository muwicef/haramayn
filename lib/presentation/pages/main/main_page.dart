import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/app_assets.dart';
import '../pray-time/pray_time_page.dart';
import '../calendar/calendar_page.dart';
import '../profile/profile_page.dart';
import '../books/books_page.dart';
import '../home/home_page.dart';

enum LanguageType { latin, kirill }

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  final List<String> appBarTitles = [
    'Haramayn Tour',
    'titles'.tr(gender: 'useful'),
    'titles'.tr(gender: 'daily-plans'),
    'titles'.tr(gender: 'pray-times'),
    'titles'.tr(gender: 'profile'),
  ];

  late LanguageType? languageType;
  Map languages = {
    LanguageType.latin: 'Lotin',
    LanguageType.kirill: 'Кирилл',
  };

  @override
  Widget build(BuildContext context) {
    if (context.locale.toString() == "uz_latin") {
      languageType = LanguageType.latin;
    } else {
      languageType = LanguageType.kirill;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          appBarTitles[selectedIndex],
          style: AppTextStyles.montStyle20b,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const SizedBox(),
        // // actions: [
        // //   PopupMenuButton(
        // //     child: Container(
        // //       margin: const EdgeInsets.fromLTRB(0, 12, 24, 12),
        // //       padding: const EdgeInsets.symmetric(horizontal: 12),
        // //       decoration: BoxDecoration(
        // //         border: Border.all(
        // //           color: AppColors.primaryColor,
        // //           width: 1,
        // //         ),
        // //         borderRadius: BorderRadius.circular(43),
        // //       ),
        // //       child: Row(
        // //         children: [
        // //           Text(
        // //             languages[languageType],
        // //             style: AppTextStyles.montStyle12b,
        // //           ),
        // //           const SizedBox(width: 8),
        // //           SvgPicture.asset(AppAssets.icons.arrowBottom),
        // //         ],
        // //       ),
        // //     ),
        // //     itemBuilder: (context) => [
        // //       PopupMenuItem(
        // //         child: Text(
        // //           'Lotin',
        // //           style: AppTextStyles.montStyle16r.copyWith(color: AppColors.textColor4),
        // //         ),
        // //         onTap: () {
        // //           languageType = LanguageType.latin;
        // //           context.setLocale(const Locale('uz', 'latin'));
        // //           setState(() {});
        // //         },
        // //       ),
        // //       PopupMenuItem(
        // //         child: Text(
        // //           'Кирилл',
        // //           style: AppTextStyles.montStyle16r.copyWith(color: AppColors.textColor4),
        // //         ),
        // //         onTap: () {
        // //           languageType = LanguageType.kirill;
        // //           context.setLocale(const Locale('uz', 'cyrillic'));
        // //           setState(() {});
        // //         },
        // //       ),
        // //     ],
        //   )
        // ],
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          BooksPage(),
          CalendarPage(),
          PrayTimesPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: selectedIndex,
        onTap: (value) => setState(() {
          selectedIndex = value;
          pageController.jumpToPage(value);
        }),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.icons.home),
            activeIcon: SvgPicture.asset(AppAssets.icons.homeActive),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.icons.books),
            activeIcon: SvgPicture.asset(AppAssets.icons.booksActive),
            label: 'Timeline Plans',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.icons.calendar),
            activeIcon: SvgPicture.asset(AppAssets.icons.calendarActive),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.icons.time),
            activeIcon: SvgPicture.asset(AppAssets.icons.timeActive),
            label: 'Pray Times',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.icons.profile),
            activeIcon: SvgPicture.asset(AppAssets.icons.profileActive),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
