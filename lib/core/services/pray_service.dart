import 'dart:convert';

import 'package:haramayn/data/models/pray_model.dart';
import 'package:http/http.dart';

class PrayService {
  static Future<PrayModel> getPrayTimes(String city, String country, int month, int year) async {
    String baseUrl =
        "http://api.aladhan.com/v1/calendarByCity?city=$city&country=$country&method=2&month=$month&year=$year";

    Response res = await get(Uri.parse(baseUrl));
    var data = await jsonDecode(res.body);

    if (res.statusCode == 200) {
      return PrayModel.fromJson(data);
    } else {
      return PrayModel();
    }
  }
}
