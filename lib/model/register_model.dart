// To parse this JSON data, do
//
//     final sendDataFromJson = sendDataFromJsonFromJson(jsonString);

import 'dart:convert';

SendDataFromJson sendDataFromJsonFromJson(String str) =>
    SendDataFromJson.fromJson(json.decode(str));

String sendDataFromJsonToJson(SendDataFromJson data) =>
    json.encode(data.toJson());

class SendDataFromJson {
  SendDataFromJson({
    required this.name,
    required this.password,
    required this.email,
    required this.schoolId,
    required this.contactNumber,
  });

  String name;
  String password;
  String email;
  String schoolId;
  String contactNumber;

  factory SendDataFromJson.fromJson(Map<String, dynamic> json) =>
      SendDataFromJson(
        name: json["name"],
        password: json["password"],
        email: json["email"],
        schoolId: json["school_id"],
        contactNumber: json["contact_number"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "password": password,
        "email": email,
        "school_id": schoolId,
        "contact_number": contactNumber,
      };
}
