// To parse this JSON data, do
//
//     final CommunityModel = CommunityModelFromJson(jsonString);

import 'dart:convert';

class CommunityModel {
  CommunityModel({
    required this.title,
    required this.description,
    required this.noOfMember,
    required this.noOfMessages,
    required this.members,
  });

  final String title;
  final String description;
  final int noOfMember;
  final int noOfMessages;
  final List<String> members;

  CommunityModel copyWith(
          {String? title,
          String? description,
          int? noOfMember,
          int? noOfMessages,
          List<String>? members}) =>
      CommunityModel(
          title: title ?? this.title,
          description: description ?? this.description,
          noOfMember: noOfMember ?? this.noOfMember,
          noOfMessages: noOfMessages ?? this.noOfMessages,
          members: members ?? this.members);

  factory CommunityModel.fromRawJson(String str) =>
      CommunityModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommunityModel.fromJson(Map<String, dynamic> json) => CommunityModel(
        title: json["title"],
        description: json["description"],
        noOfMember: json["no_of_member"],
        noOfMessages: json["no_of_messages"],
        members: []
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "no_of_member": noOfMember,
        "no_of_messages": noOfMessages,
        'members': members
      };
}
