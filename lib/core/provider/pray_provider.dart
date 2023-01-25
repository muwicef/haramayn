import 'package:flutter/material.dart';
import 'package:haramayn/core/services/pray_service.dart';
import 'package:haramayn/data/models/pray_model.dart';

class PrayProvider extends ChangeNotifier {
  PrayModel prayDateTashkent = PrayModel();
  PrayModel prayDateMadina = PrayModel();
  PrayModel prayDateMakkah = PrayModel();

  int date = DateTime.now().day;
  int month = DateTime.now().month;
  int year = DateTime.now().year;

  bool isLoading = false;

  PrayProvider() {
    loadData();
  }

  changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future loadData() async {
    prayDateTashkent = await PrayService.getPrayTimes('Tashkent', 'Uzbekistan', month, year);
    prayDateMadina = await PrayService.getPrayTimes('Madina', 'Saudi', month, year);
    prayDateMakkah = await PrayService.getPrayTimes('Makkah', 'Saudi', month, year);

    changeLoading();
  }

  Timings curTashkentData() {
    return prayDateTashkent.data![date - 1].timings!;
  }

  Timings curMakkahData() {
    return prayDateMakkah.data![date - 1].timings!;
  }

  Timings curMadinaData() {
    return prayDateMadina.data![date - 1].timings!;
  }
}
