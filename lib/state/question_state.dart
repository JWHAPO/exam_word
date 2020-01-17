import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:exam/model/question.dart';

class QuestionState extends ChangeNotifier{
  List<Question> _questions;
  List<Question> get listQuestions => _questions;

  set listQuestions(List<Question> val){
    _questions = val;
    notifyListeners();
  }

  Question _question;
  Question get detailQuestion => _question;

  set detailQuestion(Question val){
    _question = val;
    notifyListeners();
  }

  Future<List<Question>> getQuestions() async {
    String _jsonResponse = "";
    try{
      http.Response response =
      await http.get(Uri.encodeFull('http://dummy.restapiexample.com/api/v1/employees'), headers: {"Content-type": "application/json", });

      if(response.statusCode == 200){
        _jsonResponse = utf8.decode(response.bodyBytes);
        List<dynamic> res = jsonDecode(_jsonResponse);
        List<Question> data = [];

        for(var i=0; i<res.length; i++){
          var note = Question.fromJson(res[i]);
          data.add(note);
        }
        listQuestions = data;
        return listQuestions;
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

  Future<Question> getQuestion(String id) async {
    String _jsonResponse = "";
    try{
      http.Response response =
      await http.get(Uri.encodeFull('http://dummy.restapiexample.com/api/v1/employee/$id'), headers: {"Content-type": "application/json", });

      if(response.statusCode == 200){
        _jsonResponse = utf8.decode(response.bodyBytes);
        Question question = Question.fromJson(jsonDecode(_jsonResponse));
        detailQuestion = question;
        return question;
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