class UserModel {
  bool? error;
  String? message;
  List<Data>? data;

  UserModel({this.error, this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
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
  int? agentId;
  String? name;
  String? phone;
  String? password;
  String? token;
  int? balans;
  String? status;

  Data({
    this.id,
    this.agentId,
    this.name,
    this.phone,
    this.password,
    this.token,
    this.balans,
    this.status,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    agentId = json['agent_id'];
    name = json['name'];
    phone = json['phone'];
    password = json['password'];
    token = json['token'];
    balans = json['balans'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['agent_id'] = agentId;
    data['name'] = name;
    data['phone'] = phone;
    data['password'] = password;
    data['token'] = token;
    data['balans'] = balans;
    data['status'] = status;
    return data;
  }
}
