import 'package:flutter/material.dart';
import 'package:exam/main.dart';

class ResultPage extends StatelessWidget {
  final Map<String,int> data;

  ResultPage({@required this.data});

  @override
  Widget build(BuildContext context) {
    int result = ((data['point'] / data['total']) * 100).toInt();

    String text1;
    String text2;
    String imgPath;

    text1 = '$result 점';
    if(result>50){
      text2 = '형아, 누나들 잘했어요';
      imgPath = 'assets/img/good.jpg';
    }else{
      text2 = '형아, 누나들 더 공부하세요';
      imgPath = 'assets/img/bad.jpg';
    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(imgPath,width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,fit: BoxFit.contain,),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.68, bottom: MediaQuery.of(context).size.height*0.04),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular( 16.0),),
                  border: Border.all(width: 2, color: Colors.black)
                ),
                child: Column(
                  children: <Widget>[
                    Text(text1,style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.red)),
                    Text(text2,style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black87)),
                    RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black87)),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>MyHomePage()));
                      },
                      color: Colors.white,
                      textColor: Colors.black87,
                      child: Text("다시하기",style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
