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
      child: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 80.0, right: 80.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Stack(
                  children: <Widget>[
                    //배경 이미지
                    //회원가입 글자
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextField(

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
      ),
    );
  }
}
