import 'dart:convert';

import 'package:faker/faker.dart';

class PostModel {
  int id;
  String username;
  String userAvatar;
  String media;
  String mediaType;
  int likeCount;
  String content;
  PostModel({
    required this.id,
    required this.username,
    required this.userAvatar,
    required this.media,
    required this.mediaType,
    required this.likeCount,
    required this.content,
  });

  factory PostModel.fake() {
    Faker faker = Faker();
    return PostModel(
      id: faker.randomGenerator.integer(10000),
      username: faker.person.name(),
      userAvatar: faker.image.image(
          random: true, keywords: ["avatar", "person", "user", "profile"]),
      media:
          faker.image.image(random: true, keywords: ["cars", "bmw", "selfie"]),
      mediaType: "image",
      likeCount: faker.randomGenerator.integer(1000),
      content: faker.lorem.sentence(),
    );
  }

  PostModel copyWith({
    int? id,
    String? username,
    String? userAvatar,
    String? media,
    String? mediaType,
    int? likeCount,
    String? content,
  }) {
    return PostModel(
      id: id ?? this.id,
      username: username ?? this.username,
      userAvatar: userAvatar ?? this.userAvatar,
      media: media ?? this.media,
      mediaType: mediaType ?? this.mediaType,
      likeCount: likeCount ?? this.likeCount,
      content: content ?? this.content,
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
      'content': content,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as int,
      username: map['username'] as String,
      userAvatar: map['userAvatar'] as String,
      media: map['media'] as String,
      mediaType: map['mediaType'] as String,
      likeCount: map['likeCount'] as int,
      content: map['content'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PostModel(id: $id, username: $username, userAvatar: $userAvatar, media: $media, mediaType: $mediaType, likeCount: $likeCount, content: $content)';
  }

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.username == username &&
        other.userAvatar == userAvatar &&
        other.media == media &&
        other.mediaType == mediaType &&
        other.likeCount == likeCount &&
        other.content == content;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        userAvatar.hashCode ^
        media.hashCode ^
        mediaType.hashCode ^
        likeCount.hashCode ^
        content.hashCode;
  }
}
