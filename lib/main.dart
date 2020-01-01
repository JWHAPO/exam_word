import 'package:flutter/material.dart';
import 'dart:async';
import 'package:exam/util/route.dart';
import 'package:exam/util/const.dart';
import 'package:exam/util/mytheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      title: '${Const.APP_NAME}',
      theme: MyTheme.getThemeFromKey(MyThemeKeys.LIGHT),
      initialRoute: 'login',
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  final int changeTime = 1000;
  bool isStart = false;
  String stage = '';
  String word='';
  double duration = 0.0;
  int point = 0;
  int index = 0;
  final TextEditingController _answerController =TextEditingController();
  List<String> words = [
    'Apple', 'Banana', 'Cherry', 'Dragon'
  ];
  List<List<String>> answers = [
    ['사과'],
    ['바나나','버내너','버네너'],
    ['체리','췌리'],
    ['용']
  ];

  @override
  void initState() {
    super.initState();
  }

  void firstStart(){
    setState(() {
      isStart = true;
      int tempIndex = index ~/2;
      if(tempIndex >= words.length) {
        index = 0;
        tempIndex = index ~/2;
      }else{
        stage = '${tempIndex+1} / ${words.length}';
        word = words[tempIndex];
        duration = duration==1.0?0.0:1.0;
        index ++;
        changeWord();
      }
    });
  }

  void changeWord(){
    Future.delayed(Duration(milliseconds: changeTime), () {
      setState(() {
        int tempIndex = index ~/2;

        if(index%2 ==0){
          addPoint(tempIndex);
          _answerController.text = '';
        }

        if(tempIndex >= words.length) {
          index = 0;
          isStart = false;

          moveDetail();
        }else{
          stage = '${tempIndex+1} / ${words.length}';
          word = words[tempIndex];
          duration = duration==1.0?0.0:1.0;
          index ++;
          changeWord();
        }
      });
    });
  }

  void moveDetail(){
    Map<String, int> map = new Map();
    map['point'] = point;
    map['total'] = words.length;

    Navigator.pushReplacementNamed(context, 'result',arguments: map);
  }

  void addPoint(int index){
    if(answers[index-1].contains(_answerController.value.text.trim())) point++;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Header'),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(stage, style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),),
              isStart?
              Column(
                children: <Widget>[
                  AnimatedOpacity(
                    opacity: duration,
                    child: Text(word, style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),),
                    duration: Duration(milliseconds: changeTime),
                  ),
                  TextField(
                    controller: _answerController,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    decoration: InputDecoration(
                      labelText: '정답',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )
                ],
              ):Column(
                children: <Widget>[
                  Text('이번 주 단어 시험', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.0,),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.black54)),
                    onPressed: () {
                      firstStart();
                    },
                    color: Colors.white,
                    textColor: Colors.black54,
                    child: Text("시작",style: TextStyle(fontSize: 18)),
                  ),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
