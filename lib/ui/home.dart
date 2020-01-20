import 'package:exam/model/notice.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
  int currentPage = 0;

  List<Map<String, String>> listTeachers = [
    {'image':"", 'name':""},
    {'image':"", 'name':""},
  ];

  double page = 2.0;

  @override
  void initState() {
    pageController = PageController(initialPage: currentPage, viewportFraction: viewPortFraction);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
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
            Container(
              height: PAGER_HEIGHT,
              child: NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification notification){
                  if(notification is ScrollUpdateNotification){
                    setState(() {
                      page = pageController.page;
                    });
                  }
                },
                child: PageView.builder(
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                listTeachers[currentPage]['name'],textAlign: TextAlign.center,style: TextStyle(fontSize: 20),
              ),
            )


          ],
        )
    );
  }

  Widget circleOffer(String image, double scale){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: PAGER_HEIGHT * scale,
        width: PAGER_HEIGHT * scale,
        child: Card(
          elevation: 4,
          clipBehavior: Clip.antiAlias,
          shape: CircleBorder(side: BorderSide(color: Colors.grey.shade200, width: 3)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}

