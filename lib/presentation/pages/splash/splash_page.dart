import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'components/animated_logo.dart';
import '../../routes.dart';

bool? isLangSelected = false;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future getValidationData() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var obtainedBool = sharedPreferences.getBool('langSelected');
    setState(() {
      isLangSelected = obtainedBool;
    });
  }

  @override
  void initState() {
    getValidationData().whenComplete(() async {
      Future.delayed(
        const Duration(seconds: 2),
        () => isLangSelected == true
            ? Navigator.pushNamedAndRemoveUntil(
                context,
                Routes.mainPage,
                (_) => false,
              )
            : Navigator.pushNamedAndRemoveUntil(
                context,
                Routes.welcomePage,
                (_) => false,
              ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Hero(
          tag: 'SplashHero',
          child: AnimatedLogo(),
        ),
      ),
    );
  }
}
