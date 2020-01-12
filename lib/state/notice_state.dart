import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:exam/model/notice.dart';

class NoticeState extends ChangeNotifier{
  List<Notice> _notices;
  List<Notice> get listNotices => _notices;

  set listNotices(List<Notice> val){
    _notices = val;
    notifyListeners();
  }

  Notice _notice;
  Notice get detailNotice => _notice;

  set detailNotice(Notice val){
    _notice = val;
    notifyListeners();
  }

  Future<List<Notice>> getNotices() async {
    String _jsonResponse = "";
    try{
      http.Response response =
      await http.get(Uri.encodeFull('http://dummy.restapiexample.com/api/v1/employees'), headers: {"Content-type": "application/json", });

      if(response.statusCode == 200){
        _jsonResponse = utf8.decode(response.bodyBytes);
        List<dynamic> res = jsonDecode(_jsonResponse);
        List<Notice> data = [];

        for(var i=0; i<res.length; i++){
          var notice = Notice.fromJson(res[i]);
          data.add(notice);
        }
        listNotices = data;
        return listNotices;
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

  Future<Notice> getNotice(String id) async {
    String _jsonResponse = "";
    try{
      http.Response response =
      await http.get(Uri.encodeFull('http://dummy.restapiexample.com/api/v1/employee/$id'), headers: {"Content-type": "application/json", });

      if(response.statusCode == 200){
        _jsonResponse = utf8.decode(response.bodyBytes);
        Notice notice = Notice.fromJson(jsonDecode(_jsonResponse));
        detailNotice = notice;
        return notice;
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