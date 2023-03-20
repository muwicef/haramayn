import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:haramayn/core/provider/all_guide_provider.dart';
import 'package:provider/provider.dart';

import 'core/provider/pray_provider.dart';
import 'core/provider/user_provider.dart';
import 'presentation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => PrayProvider()),
        ChangeNotifierProvider(create: (context) => AllGuidesProvider()),
      ],
      child: EasyLocalization(
        supportedLocales: const [
          Locale('uz', 'latin'),
          Locale('uz', 'cyrillic'),
        ],
        saveLocale: true,
        path: 'assets/translations',
        child: const MyApp(),
      ),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: 'Haramayn Tour Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        onGenerateRoute: (setting) => Routes.generateRoute(setting),
      ),
    );
  }
}
