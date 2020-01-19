import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController _idTextController = new TextEditingController();
  final TextEditingController _pwTextController = new TextEditingController();
  final TextEditingController _pwConfirmTextController = new TextEditingController();
  final TextEditingController _nameConfirmTextController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 80.0,),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  padding: EdgeInsets.only(right: 50.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height* 0.2,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.spellcheck,color: Color(0x805AAEFF),size: 160.0,)
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('회원가입',style: TextStyle(fontFamily: 'NanumGothic-ExtraBold', fontSize: 26.0, color: Colors.black),)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _idTextController,
                  style: TextStyle(color: Colors.black, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
                  decoration: InputDecoration(
                    labelText: 'ID',
                    hintText: 'ID를 입력하세요.',
                    labelStyle: TextStyle(color: Colors.grey, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _pwTextController,
                  style: TextStyle(color: Colors.black, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    hintText: '비밀번호를 입력하세요.',
                    labelStyle: TextStyle(color: Colors.grey, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _pwConfirmTextController,
                  style: TextStyle(color: Colors.black, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
                  decoration: InputDecoration(
                    labelText: '비밀번호 확인',
                    hintText: '위 비밀번호와 같게 입력하세요.',
                    labelStyle: TextStyle(color: Colors.grey, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _nameConfirmTextController,
                  style: TextStyle(color: Colors.black, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
                  decoration: InputDecoration(
                    labelText: '이름',
                    hintText: '이름을 입력하세요.',
                    labelStyle: TextStyle(color: Colors.grey, fontFamily: 'NanumGothic-Regular', fontSize: 16.0),
                  ),
                ),
                SizedBox(height: 20.0,),
                Align(
                  alignment: Alignment.centerRight,
                  child: RaisedButton(
                    onPressed: (){
                      if(_pwConfirmTextController.value.text == ''){

                      }
                    },
                    color: Theme.of(context).accentColor,
                    child: Text('가입하기', style: TextStyle(fontFamily: 'NanumGothic-ExtraBold', fontSize: 14.0, color: Colors.white), ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), topLeft: Radius.circular(20.0))
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                Align(
                  alignment: Alignment.centerRight,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                    color: Theme.of(context).accentColor,
                    child: Text('로그인', style: TextStyle(fontFamily: 'NanumGothic-ExtraBold', fontSize: 14.0, color: Colors.white), ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), topLeft: Radius.circular(20.0))
                    ),
                  ),
                ),
              ],
            ),
            //ID
            //비밀번호
            //비밀번호확인
            //이름
            //반
          ),
        ),
      );
  }
}
