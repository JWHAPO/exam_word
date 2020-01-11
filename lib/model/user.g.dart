// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['userId'] as int,
    json['userNo'] as String,
    json['password'] as String,
    json['name'] as String,
    json['email'] as String,
    json['age'] as String,
    json['profileImg'] as String,
    json['regDate'] == null ? null : DateTime.parse(json['regDate'] as String),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userId': instance.userId,
      'userNo': instance.userNo,
      'password': instance.password,
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'profileImg': instance.profileImg,
      'regDate': instance.regDate?.toIso8601String(),
    };
