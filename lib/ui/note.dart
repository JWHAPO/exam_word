import 'package:exam/model/note.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exam/state/note_state.dart';

class NotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NoteState noteState = Provider.of<NoteState>(context);

    if(noteState.listNotes == null) noteState.getNotes();

    return ChangeNotifierProvider<NoteState>.value(
      value: NoteState(),
      child: Container(
        child: ListView.builder(
          itemCount: noteState.listNotes.length,
          itemBuilder: (BuildContext context, int index){
            return itemNote(noteState.listNotes[index], context);
          },
        ),
      ),
    );
  }

  Widget itemNote(Note note, BuildContext context){
    return ListTile(
      title: Text(note.title),
      subtitle: Text(note.contents),
      onTap: (){
        onTapped(note);
      },
    );
  }

  void onTapped(Note note){

  }
}
