import 'package:exam/model/note.dart';
import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 0,
        itemBuilder: (BuildContext context, int index){
          return itemNote(null, context);
        },
      ),
    );
  }

  Widget itemNote(Note note, BuildContext context){
    return ListTile(
      title: Text(note.title),
      subtitle: Text(note.contents),
    );
  }
}
