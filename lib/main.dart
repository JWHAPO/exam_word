import 'package:flutter/material.dart';
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
  @override
  void initState() {
    super.initState();
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
                child: Text('Header', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor
                ),
              ),
              ListTile(
                title: Text('금 주의 단어퀴즈', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.pushNamed(context, 'exam');
                },
              ),
              ListTile(
                title: Text('Item 1', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
        ),
      ),
    );
  }
}
