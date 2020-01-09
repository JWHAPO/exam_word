import 'package:json_annotation/json_annotation.dart';

part 'notice.g.dart';

@JsonSerializable()
class Notice{
  String id;
  DateTime regDate;
  String title;
  String contents;
  int count;

  Notice(this.id, this.regDate, this.title, this.contents, this.count);

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);
  Map<String, dynamic> toJson() => _$NoticeToJson(this);

}