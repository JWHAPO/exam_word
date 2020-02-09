import 'package:exam/model/note.dart';
import 'package:flutter/material.dart';

class NoteDetailPage extends StatelessWidget {

  final Note note;
  NoteDetailPage({Key key, @required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(note.title,style: Theme.of(context).textTheme.title,),
          Divider(
            height: 2.0,
            color: Colors.grey,
          ),
          Text(note.contents,style: Theme.of(context).textTheme.body1,)
        ],
      ),
    );
  }

}

