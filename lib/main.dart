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
                title: Text('Item 1', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('단어테스트', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.pushNamed(context, 'exam');
                },
              )
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Text('Main')
        ),
      ),
    );
  }
}
