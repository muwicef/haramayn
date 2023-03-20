class GuidesModel {
  bool? error;
  String? message;
  List<Data>? data;

  GuidesModel({this.error, this.message, this.data});

  GuidesModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? title;
  String? textC;
  String? textL;
  String? video;
  String? status;
  int? agaentId;

  Data(
      {this.id,
      this.title,
      this.textC,
      this.textL,
      this.video,
      this.status,
      this.agaentId});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    textC = json['text_c'];
    textL = json['text_l'];
    video = json['video'];
    status = json['status'];
    agaentId = json['agaent_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['text_c'] = textC;
    data['text_l'] = textL;
    data['video'] = video;
    data['status'] = status;
    data['agaent_id'] = agaentId;
    return data;
  }
}
