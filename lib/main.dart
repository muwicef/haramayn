import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: 'Haramayn Tour Demo',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (setting) => Routes.generateRoute(setting),
      ),
    );
  }
}
