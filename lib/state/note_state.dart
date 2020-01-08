import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:exam/model/note.dart';

class NoteState extends ChangeNotifier{
  List<Note> _notes;
  List<Note> get listNotes => _notes;

  set listNotes(List<Note> val){
    _notes = val;
    notifyListeners();
  }

  Note _note;
  Note get detailNote => _note;

  set detailNote(Note val){
    _note = val;
    notifyListeners();
  }

  Future<List<Note>> getNotes() async {
    String _jsonResponse = "";
    try{
      http.Response response =
      await http.get(Uri.encodeFull('http://dummy.restapiexample.com/api/v1/employees'), headers: {"Content-type": "application/json", });

      if(response.statusCode == 200){
        _jsonResponse = utf8.decode(response.bodyBytes);
        List<dynamic> res = jsonDecode(_jsonResponse);
        List<Note> data = [];

        for(var i=0; i<res.length; i++){
          var note = Note.fromJson(res[i]);
          data.add(note);
        }
        listNotes = data;
        return listNotes;
      }else{
        //To Do 에러처리
        return null;
      }

    } on TimeoutException catch (e) {
      print('TimeoutException$e');
      return null;
    } on Error catch (e){
      print('Error$e');
      return null;
    }
  }

  Future<Note> getNote(String id) async {
    String _jsonResponse = "";
    try{
      http.Response response =
      await http.get(Uri.encodeFull('http://dummy.restapiexample.com/api/v1/employee/$id'), headers: {"Content-type": "application/json", });

      if(response.statusCode == 200){
        _jsonResponse = utf8.decode(response.bodyBytes);
        Note note = Note.fromJson(jsonDecode(_jsonResponse));
        detailNote = note;
        return note;
      }else{
        //To Do 에러처리
        return null;
      }

    } on TimeoutException catch (e) {
      print('TimeoutException$e');
      return null;
    } on Error catch (e){
      print('Error$e');
      return null;
    }
  }
}