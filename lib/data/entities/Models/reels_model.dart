// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:faker/faker.dart';

class ReelsModel {
  int id;
  String username;
  String userAvatar;
  String media;
  String mediaType;
  int likeCount;
  int commentCount;
  String content;
  String firstName;
  bool isFollowed = false;
  bool isLiked = false;
  ReelsModel({
    required this.id,
    required this.username,
    required this.userAvatar,
    required this.media,
    required this.mediaType,
    required this.likeCount,
    required this.commentCount,
    required this.content,
    required this.firstName,
  });
  factory ReelsModel.fake() {
    Faker faker = Faker();
    return ReelsModel(
      id: faker.randomGenerator.integer(10000),
      username: faker.person.name(),
      userAvatar: faker.image.image(
          random: true, keywords: ["avatar", "person", "user", "profile"]),
      media: faker.image.image(
          random: true, keywords: ["bmw", "m5"], width: 720, height: 1280),
      mediaType: "image",
      likeCount: faker.randomGenerator.integer(1000),
      commentCount: faker.randomGenerator.integer(1000),
      content: faker.lorem.word(),
      firstName: faker.person.firstName(),
    );
  }
  ReelsModel copyWith({
    int? id,
    String? username,
    String? userAvatar,
    String? media,
    String? mediaType,
    int? likeCount,
    int? commentCount,
    String? content,
    String? firstName,
  }) {
    return ReelsModel(
      id: id ?? this.id,
      username: username ?? this.username,
      userAvatar: userAvatar ?? this.userAvatar,
      media: media ?? this.media,
      mediaType: mediaType ?? this.mediaType,
      likeCount: likeCount ?? this.likeCount,
      commentCount: commentCount ?? this.commentCount,
      content: content ?? this.content,
      firstName: firstName ?? this.firstName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'userAvatar': userAvatar,
      'media': media,
      'mediaType': mediaType,
      'likeCount': likeCount,
      'commentCount': commentCount,
      'content': content,
      'firstName': firstName,
    };
  }

  factory ReelsModel.fromMap(Map<String, dynamic> map) {
    return ReelsModel(
      id: map['id'] as int,
      username: map['username'] as String,
      userAvatar: map['userAvatar'] as String,
      media: map['media'] as String,
      mediaType: map['mediaType'] as String,
      likeCount: map['likeCount'] as int,
      commentCount: map['commentCount'] as int,
      content: map['content'] as String,
      firstName: map['firstName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReelsModel.fromJson(String source) =>
      ReelsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReelsModel(id: $id, username: $username, userAvatar: $userAvatar, media: $media, mediaType: $mediaType, likeCount: $likeCount, commentCount: $commentCount, content: $content, firstName: $firstName)';
  }

  @override
  bool operator ==(covariant ReelsModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.username == username &&
        other.userAvatar == userAvatar &&
        other.media == media &&
        other.mediaType == mediaType &&
        other.likeCount == likeCount &&
        other.commentCount == commentCount &&
        other.content == content &&
        other.firstName == firstName;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        userAvatar.hashCode ^
        media.hashCode ^
        mediaType.hashCode ^
        likeCount.hashCode ^
        commentCount.hashCode ^
        content.hashCode ^
        firstName.hashCode;
  }
}
