import 'package:exam/model/notice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exam/state/notice_state.dart';

class NoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final NoticeState noticeState = Provider.of<NoticeState>(context);

    if(noticeState.listNotices == null) noticeState.getNotices();

    return ChangeNotifierProvider<NoticeState>.value(
      value: NoticeState(),
      child: Container(
        child: ListView.builder(
          itemCount: noticeState.listNotices.length,
          itemBuilder: (BuildContext context, int index){
            return itemNotice(noticeState.listNotices[index], context);
          },
        ),
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
