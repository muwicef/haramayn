import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_assets.dart';
import '../books/books_page.dart';
import '../calendar/calendar_page.dart';
import '../home/home_page.dart';
import '../pray-time/pray_time_page.dart';
import '../profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  final List<String> appBarTitles = [
    'Home',
    'Books',
    'Calendar',
    'Namoz Vaqtlari',
    'Shaxsiy Profil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(appBarTitles[selectedIndex]),
        centerTitle: true,
        leading: const SizedBox(),
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
