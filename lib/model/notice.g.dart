// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notice _$NoticeFromJson(Map<String, dynamic> json) {
  return Notice(
    json['noticeId'] as int,
    json['regDate'] == null ? null : DateTime.parse(json['regDate'] as String),
    json['title'] as String,
    json['contents'] as String,
    json['count'] as int,
  );
}

Map<String, dynamic> _$NoticeToJson(Notice instance) => <String, dynamic>{
      'noticeId': instance.noticeId,
      'regDate': instance.regDate?.toIso8601String(),
      'title': instance.title,
      'contents': instance.contents,
      'count': instance.count,
    };
