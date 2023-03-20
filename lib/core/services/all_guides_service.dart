import 'dart:convert';
import 'dart:io';

import 'package:haramayn/data/models/all_guides_model.dart';
import 'package:haramayn/data/models/guides_model.dart';
import 'package:http/http.dart' as http;

class AllGuidesService {
  static Future<AllGuidesModel> getAllGuides() async {
    String baseUrl = "http://saidbots.ga/api/auth/getYoriqnomalarList";

    http.Response request = await http.get(Uri.parse(baseUrl), headers: {
      HttpHeaders.authorizationHeader:
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJhZHJlc3MiOiJodHRwOi8vbG9jYWxob3N0IiwiZXhwIjozMzU3NzEzMTE0fQ.rctS2VAVcJZPBj0CO2bt6aTHyxwqpuGRsSvRNzWSyN4',
    });

    if (request.statusCode == 200) {
      return AllGuidesModel.fromJson(jsonDecode(request.body));
    } else {
      return AllGuidesModel();
    }
  }

  static Future<GuidesModel> getGuides() async {
    String baseUrl = "http://saidbots.ga/api/auth/getYoriqnomalar";

    http.Response request = await http.get(Uri.parse(baseUrl), headers: {
      HttpHeaders.authorizationHeader:
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJhZHJlc3MiOiJodHRwOi8vbG9jYWxob3N0IiwiZXhwIjozMzU3NzEzMTE0fQ.rctS2VAVcJZPBj0CO2bt6aTHyxwqpuGRsSvRNzWSyN4',
    });

    if (request.statusCode == 200) {
      return GuidesModel.fromJson(jsonDecode(request.body));
    } else {
      return GuidesModel();
    }
  }
}
