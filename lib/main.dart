import 'package:flutter/material.dart';
import 'package:exam/util/route.dart';
import 'package:exam/util/const.dart';
import 'package:exam/util/mytheme.dart';
import 'package:exam/ui/note.dart';
import 'package:exam/ui/notice.dart';

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
      initialRoute: 'splash',
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  var body;

  @override
  void initState() {
    super.initState();

    body = homeBody();
  }


  Widget homeBody(){
    return Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: '7월 ', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                    TextSpan(text: '퀴즈왕 ', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),),
                  ]
              ),
            ),
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: '손지환 ', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),),
                    TextSpan(text: 'A반 ', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                  ]
              ),
            )
          ],
        )
    );
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
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: AssetImage('assets/img/profile.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(new Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('A반'),
                        Text('손지환'),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor
                ),
              ),
              ListTile(
                title: Text('메인', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                leading: Icon(Icons.home),
                onTap: (){
                  setState(() {
                    body = homeBody();
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('금 주의 단어퀴즈', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                leading: Icon(Icons.note),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'exam');
                },
              ),
              ListTile(
                title: Text('알림장', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                leading: Icon(Icons.create),
                onTap: (){
                  setState(() {
                    body = NotePage();
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('공지사항', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                leading: Icon(Icons.notifications_none),
                onTap: (){
                  setState(() {
                    body = NoticePage();
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: body,
      ),
    );
  }
}
