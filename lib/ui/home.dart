import 'dart:math';

import 'package:flutter/material.dart';
import 'package:exam/model/user.dart';
import 'package:exam/model/teacher.dart';

const SCALE_FRACTION = 0.7;
const FULL_SCALE = 1.0;
const PAGER_HEIGHT = 200.0;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double viewPortFraction = 0.5;
  PageController pageController;
  int currentPage = 2;

  List<Map<String, String>> listTeachers = [
    {'image':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCIevdnktXKRDigFjqvR80GP7b8jqNaSszjJ4idqh1B6zz8LWX&s", 'name':"Lady Gaga"},
    {'image':"https://i.ytimg.com/vi/yURRmWtbTbo/maxresdefault.jpg", 'name':"michael jackson"},
    {'image':"https://pds.joins.com/jmnet/koreajoongangdaily/_data/photo/2018/08/13185643.jpg", 'name':"김태희"},
    {'image':"https://pds.joins.com/jmnet/koreajoongangdaily/_data/photo/2018/08/13185643.jpg", 'name':"김태희"},
    {'image':"https://pds.joins.com/jmnet/koreajoongangdaily/_data/photo/2018/08/13185643.jpg", 'name':"김태희"},
  ];

  double page = 2.0;

  @override
  void initState() {
    pageController = PageController(initialPage: currentPage, viewportFraction: viewPortFraction);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
              ),
              SizedBox(
                height: 40.0,
              ),
              Text('강사소개',style: Theme.of(context).textTheme.title,),
              Container(
                height: PAGER_HEIGHT,
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification notification){
                    if(notification is ScrollUpdateNotification){
                      setState(() {
                        page = pageController.page;
                      });
                    }
                    return true;
                  },
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (pos){
                      setState(() {
                        currentPage = pos;
                      });
                    },
                    physics: BouncingScrollPhysics(),
                    itemCount: listTeachers.length,
                    itemBuilder: (context, index){
                      final scale = max(SCALE_FRACTION, (FULL_SCALE - (index - page).abs()) + viewPortFraction);
                      return circleOffer(listTeachers[index]['image'], scale);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    listTeachers[currentPage]['name'],style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Text('학원소개',style: Theme.of(context).textTheme.title,),
              Text('좋은 학원입니다. 좋은 학원입니다. 이 학원에서는 좋은 커리큘럼과 훌륭한 강사진을 보유하고 있습니다.',style: Theme.of(context).textTheme.body1,),
            ],
          )
      ),
    );
  }

  Widget circleOffer(String image, double scale){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: PAGER_HEIGHT * scale,
        width: PAGER_HEIGHT * scale,
        child: GestureDetector(
          onTap: (){
            var map = new Map();
            map['user'] = User(0, "", "", "", "", "", image, DateTime.now());
            map['teacher'] = Teacher(0, 0, "This is My Career", "This is Remark", DateTime.now());

            Navigator.pushNamed(context, 'teacher',arguments: map);
          },
          child: Card(
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            shape: CircleBorder(side: BorderSide(color: Colors.grey.shade200, width: 3)),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

}

