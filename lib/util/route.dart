
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:exam/main.dart';
import 'package:exam/ui/result.dart';
import 'package:exam/util/const.dart';
import 'package:exam/ui/login.dart';
import 'package:exam/ui/signup.dart';
import 'package:exam/ui/splash.dart';
import 'package:exam/ui/exam.dart';
import 'package:exam/ui/teacher.dart';
import 'package:exam/model/user.dart';

class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return FadeRoute(page: MyHomePage(title: '${Const.APP_NAME}',));
      case 'main':
        return FadeRoute(page: MyHomePage(title: '${Const.APP_NAME}'));
      case 'login':
        return FadeRoute(page: LoginPage());
      case 'signup':
        return FadeRoute(page: SignUpPage());
      case 'splash':
        return FadeRoute(page: SplashPage());
      case 'exam':
        return FadeRoute(page: ExamPage());
      case 'teacher':
        Map map = settings.arguments;
        return FadeRoute(page: TeacherPage(user: map['user'], teacher: map['teacher'],));
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