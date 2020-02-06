import 'package:flutter/material.dart';

import 'package:exam/model/user.dart';
import 'package:exam/model/teacher.dart';

class TeacherPage extends StatelessWidget {

  final Map data;
  User user;
  Teacher teacher;

  TeacherPage({Key key,@required this.data}) : super(key: key){
    user = data['user'];
    teacher = data['teacher'];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
