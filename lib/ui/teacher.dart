import 'package:flutter/material.dart';

class TeacherPage extends StatelessWidget {
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
                  "https://pds.joins.com/jmnet/koreajoongangdaily/_data/photo/2018/08/13185643.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
