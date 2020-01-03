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
