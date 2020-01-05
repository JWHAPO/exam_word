import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    Timer(Duration(milliseconds: 2000), () => Navigator.pushReplacementNamed(context, 'login'));

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.spellcheck,color: Color(0xFF5AAEFF),size: 120.0,),
            SizedBox(height: 20.0,),
            Text('English Top Academy.', style: TextStyle(fontFamily: 'NanumGothic-Bold', fontSize: 26.0, color: Colors.grey),),
          ],
        )
      ),
    );
  }
}
