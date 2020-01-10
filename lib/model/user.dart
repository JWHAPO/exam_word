import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User{
  int userId;
  String userNo;
  String password;
  String name;
  String email;
  String age;
  String profileImg;
  DateTime regDate;

  User(this.userId, this.userNo, this.password, this.name, this.email, this.age,
      this.profileImg, this.regDate);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

}