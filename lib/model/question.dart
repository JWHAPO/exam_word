import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@JsonSerializable()
class Question{
  int questionId;
  List<String> questions;
  List<String> answers;
  DateTime startDate;
  DateTime endTime;
  DateTime regDate;


  Question(this.questionId, this.questions, this.answers, this.startDate,
      this.endTime, this.regDate);

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);

}