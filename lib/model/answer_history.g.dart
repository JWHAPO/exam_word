// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnswerHistory _$AnswerHistoryFromJson(Map<String, dynamic> json) {
  return AnswerHistory(
    json['answerHistoryId'] as int,
    (json['answers'] as List)?.map((e) => e as String)?.toList(),
    json['point'] as String,
    json['regDate'] == null ? null : DateTime.parse(json['regDate'] as String),
  );
}

Map<String, dynamic> _$AnswerHistoryToJson(AnswerHistory instance) =>
    <String, dynamic>{
      'answerHistoryId': instance.answerHistoryId,
      'answers': instance.answers,
      'point': instance.point,
      'regDate': instance.regDate?.toIso8601String(),
    };
