import 'package:exam/model/notice.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 0,
        itemBuilder: (BuildContext context, int index){
          return itemNotice(null, context);
        },
      ),
    );
  }

  Widget itemNotice(Notice notice, BuildContext context){
    return ListTile(
      title: Text(notice.title),
      subtitle: Text(notice.contents),
    );
  }
}
