import 'dart:convert';

RegisterResponseModel registerResponseModel(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  RegisterResponseModel({
    required this.message,
    required this.data,
  });
  late final String message;
  late final Data? data;

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data!.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.name,
    required this.address,
    required this.county,
    required this.email,
    required this.password,
    required this.passwordconfirmation,
    required this.imagepath,
    required this.id,
  });

  late final String email;
  late final String name;
  late final String address;
  late final String county;
  late final String password;
  late final String passwordconfirmation;
  late final String imagepath;
  late final int id;

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    county = json['county'];
    email = json['email'];
    password = json['password'];
    passwordconfirmation = json['passwordconfirmation'];
    imagepath = json['imagepath'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['address'] = address;
    _data['county'] = county;
    _data['email'] = email;
    _data['password'] = password;
    _data['passwordconfirmation'] = passwordconfirmation;
    _data['imagepath'] = imagepath;
    _data['id'] = id;
    return _data;
  }
}
