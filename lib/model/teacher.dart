import 'package:json_annotation/json_annotation.dart';

part 'teacher.g.dart';

@JsonSerializable()
class Teacher{
  int teacherId;
  int userId;
  String career;
  String remark;
  DateTime regDate;


  Teacher(this.teacherId, this.userId, this.career, this.remark, this.regDate);

  factory Teacher.fromJson(Map<String, dynamic> json) => _$TeacherFromJson(json);
  Map<String, dynamic> toJson() => _$TeacherToJson(this);

}