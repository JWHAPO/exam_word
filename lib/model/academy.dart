import 'package:json_annotation/json_annotation.dart';

part 'academy.g.dart';

@JsonSerializable()
class Academy{
  int academyId;
  String name;
  String address;
  String tel;
  String managerName;
  String remark;
  String mainImg;
  DateTime regDate;


  Academy(this.academyId, this.name, this.address, this.tel, this.managerName,
      this.remark, this.mainImg, this.regDate);

  factory Academy.fromJson(Map<String, dynamic> json) => _$AcademyFromJson(json);
  Map<String, dynamic> toJson() => _$AcademyToJson(this);

}