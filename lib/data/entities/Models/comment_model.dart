// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:faker/faker.dart';

class CommentModel {
  int id;
  String username;
  String userAvatar;
  String content;
  String firstName;
  int hour;
  CommentModel({
    required this.id,
    required this.username,
    required this.userAvatar,
    required this.content,
    required this.firstName,
    required this.hour,
  });

  factory CommentModel.fake() {
    Faker faker = Faker();
    return CommentModel(
      id: faker.randomGenerator.integer(10000),
      username: faker.person.name(),
      userAvatar: faker.image.image(
          random: true, keywords: ["avatar", "person", "user", "profile"]),
      content: faker.lorem.word(),
      firstName: faker.person.firstName(),
      hour: faker.randomGenerator.integer(24, min: 1),
    );
  }
  CommentModel copyWith({
    int? id,
    String? username,
    String? userAvatar,
    String? content,
    String? firstName,
    int? hour,
  }) {
    return CommentModel(
      id: id ?? this.id,
      username: username ?? this.username,
      userAvatar: userAvatar ?? this.userAvatar,
      content: content ?? this.content,
      firstName: firstName ?? this.firstName,
      hour: hour ?? this.hour,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'userAvatar': userAvatar,
      'content': content,
      'firstName': firstName,
      'hour': hour,
    };
  }

  factory CommentModel.fromMap(Map<String, dynamic> map) {
    return CommentModel(
      id: map['id'] as int,
      username: map['username'] as String,
      userAvatar: map['userAvatar'] as String,
      content: map['content'] as String,
      firstName: map['firstName'] as String,
      hour: map['hour'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CommentModel.fromJson(String source) =>
      CommentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CommentModel(id: $id, username: $username, userAvatar: $userAvatar, content: $content, firstName: $firstName, hour: $hour)';
  }

  @override
  bool operator ==(covariant CommentModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.username == username &&
        other.userAvatar == userAvatar &&
        other.content == content &&
        other.firstName == firstName &&
        other.hour == hour;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        userAvatar.hashCode ^
        content.hashCode ^
        firstName.hashCode ^
        hour.hashCode;
  }
}
