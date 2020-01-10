import 'package:json_annotation/json_annotation.dart';

part 'group.g.dart';

@JsonSerializable()
class Group{
  int groupId;
  String name;
  String remark;
  DateTime regDate;


  Group(this.groupId, this.name, this.remark, this.regDate);

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);

}