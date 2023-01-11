import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import 'components/direction_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
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
                      style: AppTextStyles.sliderTextStyle,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?',
                      style: AppTextStyles.sliderTextStyle,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?',
                      style: AppTextStyles.sliderTextStyle,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 170.h,
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
            'Yo\'nalishlar',
            style: AppTextStyles.headingStyle3,
          ),
          SizedBox(height: 15.h),
          const DirectionContainer(),
          SizedBox(height: 16.087.h),
          const DirectionContainer(),
        ],
      ),
    );
  }
}
