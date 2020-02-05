import 'package:flutter/material.dart';

import 'package:exam/model/user.dart';

class TeacherPage extends StatelessWidget {

  final User user;

  TeacherPage({Key key,@required this.user}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Hero(
                tag: "123",
                child: Image.network(
                  user.profileImg,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('', style: Theme.of(context).textTheme.body1,)
          ],
        ),
      ),
    );
  }

}
