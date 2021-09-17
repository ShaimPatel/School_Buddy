// To parse this JSON data, do
//
//     final sendData = sendDataFromJson(jsonString);

import 'dart:convert';

SendData sendDataFromJson(String str) => SendData.fromJson(json.decode(str));

String sendDataToJson(SendData data) => json.encode(data.toJson());

class SendData {
  SendData({
    required this.name,
    required this.password,
    required this.email,
    required this.partnerId,
    required this.contactNumber,
  });

  String name;
  String password;
  String email;
  String partnerId;
  String contactNumber;

  factory SendData.fromJson(Map<String, dynamic> json) => SendData(
        name: json["name"],
        password: json["password"],
        email: json["email"],
        partnerId: json["partner_id"],
        contactNumber: json["contact_number"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "password": password,
        "email": email,
        "partner_id": partnerId,
        "contact_number": contactNumber,
      };
}
