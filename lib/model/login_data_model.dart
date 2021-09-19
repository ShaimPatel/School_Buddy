// To parse this JSON data, do
//
//     final getLoginData = getLoginDataFromJson(jsonString);

import 'dart:convert';

GetLoginData getLoginDataFromJson(String str) =>
    GetLoginData.fromJson(json.decode(str));

String getLoginDataToJson(GetLoginData data) => json.encode(data.toJson());

class GetLoginData {
  GetLoginData({
    required this.email,
    required this.password,
  });

  String email;
  String password;

  factory GetLoginData.fromJson(Map<String, dynamic> json) => GetLoginData(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
