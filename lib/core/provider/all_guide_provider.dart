import 'package:flutter/material.dart';
import 'package:haramayn/core/services/all_guides_service.dart';
import 'package:haramayn/data/models/all_guides_model.dart';
import 'package:haramayn/data/models/guides_model.dart';

class AllGuidesProvider extends ChangeNotifier {
  AllGuidesModel guideData = AllGuidesModel();
  GuidesModel allGuides = GuidesModel();
  bool isLoading = false;

  AllGuidesProvider() {
    loadData();
  }

  changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future loadData() async {
    guideData = await AllGuidesService.getAllGuides();
    allGuides = await AllGuidesService.getGuides();
    changeLoading();
  }
}
