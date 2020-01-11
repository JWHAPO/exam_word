import 'package:json_annotation/json_annotation.dart';

part 'answer_history.g.dart';

@JsonSerializable()
class AnswerHistory{
  int answerHistoryId;
  List<String> answers;
  String point;
  DateTime regDate;


  AnswerHistory(this.answerHistoryId, this.answers, this.point, this.regDate);

  factory AnswerHistory.fromJson(Map<String, dynamic> json) => _$AnswerHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$AnswerHistoryToJson(this);

}