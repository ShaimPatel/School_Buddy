// To parse this JSON data, do
//
//     final likeDataModel = likeDataModelFromJson(jsonString);

import 'dart:convert';

LikeDataModel likeDataModelFromJson(String str) =>
    LikeDataModel.fromJson(json.decode(str));

String likeDataModelToJson(LikeDataModel data) => json.encode(data.toJson());

class LikeDataModel {
  LikeDataModel({
    required this.userId,
    required this.schoolId,
    required this.isLike,
  });

  String userId;
  String schoolId;
  String isLike;

  factory LikeDataModel.fromJson(Map<String, dynamic> json) => LikeDataModel(
        userId: json["user_id"],
        schoolId: json["school_id"],
        isLike: json["is_like"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "school_id": schoolId,
        "is_like": isLike,
      };
}
