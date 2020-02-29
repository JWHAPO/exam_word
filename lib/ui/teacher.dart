import 'package:flutter/material.dart';

import 'package:exam/model/user.dart';
import 'package:exam/model/teacher.dart';
import 'package:exam/util/const.dart';

class TeacherPage extends StatelessWidget {

  final User user;
  final Teacher teacher;

  TeacherPage({Key key, @required this.user, @required this.teacher}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.APP_NAME),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Image.network(
                user.profileImg,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(user.name, style: Theme.of(context).textTheme.title,),
            SizedBox(
              height: 10.0,
            ),
            Text(teacher.career, style: Theme.of(context).textTheme.body1,),
            SizedBox(
              height: 10.0,
            ),
            Text(teacher.remark, style: Theme.of(context).textTheme.body1,),
          ],
        ),
      ),
    );
  }

}
