import 'package:exam/ui/exam.dart';
import 'package:flutter/material.dart';
import 'package:exam/util/route.dart';
import 'package:exam/util/const.dart';
import 'package:exam/util/mytheme.dart';
import 'package:exam/ui/note.dart';
import 'package:exam/ui/home.dart';

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

    body = HomePage();
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
                    body = HomePage();
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('금 주의 단어퀴즈', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                leading: Icon(Icons.note),
                onTap: (){
                  setState(() {
                    body = ExamPage();
                  });
                  Navigator.pop(context);
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
                    body = NotePage();
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
