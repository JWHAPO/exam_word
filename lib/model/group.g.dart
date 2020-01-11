// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) {
  return Group(
    json['groupId'] as int,
    json['name'] as String,
    json['remark'] as String,
    json['regDate'] == null ? null : DateTime.parse(json['regDate'] as String),
  );
}

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'remark': instance.remark,
      'regDate': instance.regDate?.toIso8601String(),
    };
