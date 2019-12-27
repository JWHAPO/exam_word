
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:exam/main.dart';
import 'package:exam/result.dart';


class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return FadeRoute(page: MyHomePage());
      case 'main':
        return FadeRoute(page: MyHomePage());
      case 'result':
        if (settings.arguments is Map) {
          return FadeRoute(page: ResultPage(data: settings.arguments));
        }
        return FadeRoute(page: ResultPage(data: null));

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('${settings.name} 페이지가 없습니다.', style: TextStyle(fontFamily: 'Font-B')),
            ),
          );
        });
    }
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}