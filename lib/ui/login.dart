import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController _idTextController = new TextEditingController();
  final TextEditingController _pwTextController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 80.0, top: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.spellcheck,color: Color(0xFF5AAEFF),size: 120.0,),
            SizedBox(height: 20.0,),
            Text('환영합니다.', style: TextStyle(fontFamily: 'NanumGothic-ExtraBold', fontSize: 26.0, color: Colors.black),),
            SizedBox(height: 20.0,),
            Text('English Top Academy.', style: TextStyle(fontFamily: 'NanumGothic-Bold', fontSize: 26.0, color: Colors.grey),),
            SizedBox(height: 40.0,),
            TextField(
              controller: _idTextController,
              style: TextStyle(color: Colors.black, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
              decoration: InputDecoration(
                labelText: 'ID',
                hintText: 'ID를 입력하세요.',
                labelStyle: TextStyle(color: Colors.grey, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: _pwTextController,
              style: TextStyle(color: Colors.black, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
              decoration: InputDecoration(
                labelText: 'PASSWORD',
                hintText: '비밀번호를 입력하세요.',
                labelStyle: TextStyle(color: Colors.grey, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
