// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) {
  return Note(
    json['noteId'] as int,
    json['regDate'] == null ? null : DateTime.parse(json['regDate'] as String),
    json['title'] as String,
    json['contents'] as String,
  );
}

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'noteId': instance.noteId,
      'regDate': instance.regDate?.toIso8601String(),
      'title': instance.title,
      'contents': instance.contents,
    };
