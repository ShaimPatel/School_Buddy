// To parse this JSON data, do
//
//     final getSchoolDetail = getSchoolDetailFromJson(jsonString);

import 'dart:convert';

GetSchoolDetail getSchoolDetailFromJson(String str) =>
    GetSchoolDetail.fromJson(json.decode(str));

String getSchoolDetailToJson(GetSchoolDetail data) =>
    json.encode(data.toJson());

class GetSchoolDetail {
  GetSchoolDetail({
    required this.id,
    required this.createType,
    required this.schoolId,
    required this.name,
    required this.image,
    required this.mobileNumber,
    required this.role,
    required this.loginStatus,
    required this.email,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    required this.isLike,
  });

  int id;
  dynamic createType;
  String schoolId;
  String name;
  String image;
  dynamic mobileNumber;
  int role;
  String loginStatus;
  String email;
  dynamic emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic userId;
  dynamic isLike;

  factory GetSchoolDetail.fromJson(Map<String, dynamic> json) =>
      GetSchoolDetail(
        id: json["id"],
        createType: json["create_type"],
        schoolId: json["school_id"],
        name: json["name"],
        image: json["image"],
        mobileNumber: json["mobile_number"],
        role: json["role"],
        loginStatus: json["login_status"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        userId: json["user_id"],
        isLike: json["is_like"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "create_type": createType,
        "school_id": schoolId,
        "name": name,
        "image": image,
        "mobile_number": mobileNumber,
        "role": role,
        "login_status": loginStatus,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user_id": userId,
        "is_like": isLike,
      };
}
