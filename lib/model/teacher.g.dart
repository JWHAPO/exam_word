// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Teacher _$TeacherFromJson(Map<String, dynamic> json) {
  return Teacher(
    json['teacherId'] as int,
    json['userId'] as int,
    json['career'] as String,
    json['remark'] as String,
    json['regDate'] == null ? null : DateTime.parse(json['regDate'] as String),
  );
}

Map<String, dynamic> _$TeacherToJson(Teacher instance) => <String, dynamic>{
      'teacherId': instance.teacherId,
      'userId': instance.userId,
      'career': instance.career,
      'remark': instance.remark,
      'regDate': instance.regDate?.toIso8601String(),
    };
