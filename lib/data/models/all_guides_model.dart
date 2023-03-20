class AllGuidesModel {
  bool? error;
  String? message;
  List<Data>? data;

  AllGuidesModel({this.error, this.message, this.data});

  AllGuidesModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  String? textC;
  String? textL;

  Data({this.title, this.textC, this.textL});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    textC = json['text_c'];
    textL = json['text_l'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['text_c'] = textC;
    data['text_l'] = textL;
    return data;
  }
}
