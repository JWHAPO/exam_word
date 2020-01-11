// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return Question(
    json['questionId'] as int,
    (json['questions'] as List)?.map((e) => e as String)?.toList(),
    (json['answers'] as List)?.map((e) => e as String)?.toList(),
    json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    json['endTime'] == null ? null : DateTime.parse(json['endTime'] as String),
    json['regDate'] == null ? null : DateTime.parse(json['regDate'] as String),
  );
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'questionId': instance.questionId,
      'questions': instance.questions,
      'answers': instance.answers,
      'startDate': instance.startDate?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'regDate': instance.regDate?.toIso8601String(),
    };
