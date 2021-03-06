import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

@JsonSerializable()
class Note{
  int noteId;
  DateTime regDate;
  String title;
  String contents;

  Note(this.noteId, this.regDate, this.title, this.contents);

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
  Map<String, dynamic> toJson() => _$NoteToJson(this);

}