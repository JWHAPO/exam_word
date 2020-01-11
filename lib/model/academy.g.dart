// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Academy _$AcademyFromJson(Map<String, dynamic> json) {
  return Academy(
    json['academyId'] as int,
    json['name'] as String,
    json['address'] as String,
    json['tel'] as String,
    json['managerName'] as String,
    json['remark'] as String,
    json['mainImg'] as String,
    json['regDate'] == null ? null : DateTime.parse(json['regDate'] as String),
  );
}

Map<String, dynamic> _$AcademyToJson(Academy instance) => <String, dynamic>{
      'academyId': instance.academyId,
      'name': instance.name,
      'address': instance.address,
      'tel': instance.tel,
      'managerName': instance.managerName,
      'remark': instance.remark,
      'mainImg': instance.mainImg,
      'regDate': instance.regDate?.toIso8601String(),
    };
