import 'package:flutter/material.dart';
import 'MaterialAppWidget.dart';
import 'dart:math';

Widget getGridView() {
  List<Color> colors = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.grey,
    Colors.black,
    Colors.deepOrangeAccent,
    Colors.redAccent
  ];
  List<Color> itemColors =
  List.generate(1000, (int index) => colors[Random().nextInt(7)]);

  List<String> urls = [
    'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
    'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
    'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
    'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
    'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
    'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
    'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
    'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
    'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg'
  ];
  List<String> itemUrls =
  List.generate(1000, (int index) => urls[Random().nextInt(8)]);

  return getCommonMaterialAppWidget(
      'GridView',
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 5.0,
            childAspectRatio: 0.7, //主轴与其交叉轴的比例
          ),
          itemCount: itemUrls.length,
          itemBuilder: (context, index) {
            return Image.network(
              itemUrls[index],
              fit: BoxFit.cover,
            );
          }));

//      GridView.builder(
//          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: 2,
//            mainAxisSpacing: 10.0,
//            crossAxisSpacing: 5.0,
//            childAspectRatio: 0.75, //主轴与其交叉轴的比例
//          ),
//          itemCount: itemColors.length,
//          itemBuilder: (context, index) {
//            return Container(
//              color: itemColors[index],
//            );
//          }));

//      GridView(
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 2,
//          mainAxisSpacing: 10.0,
//          crossAxisSpacing: 5.0,
//          childAspectRatio: 0.75, //主轴与其交叉轴的比例
//        ),
//        scrollDirection: Axis.vertical,
//        children: widgets,
//      ));

//      GridView.count(
//          crossAxisCount: 2,
//          //垂直时为列数，水平时为行数
//          scrollDirection: Axis.vertical,
//          mainAxisSpacing: 10.0,
//          //垂直时主轴为横轴，水平时主轴为纵轴
//          crossAxisSpacing: 5.0,
//          //副轴与主轴相反
//          children: widgets));
}

final List<Widget> widgets = [
  Container(color: Colors.redAccent),
  Container(
    color: Colors.blueAccent,
  ),
  Container(
    color: Colors.greenAccent,
  ),
  Container(
    color: Colors.orangeAccent,
  ),
  Container(
    color: Colors.purpleAccent,
  ),
  Container(
    color: Colors.grey,
  ),
  Container(
    color: Colors.black,
  ),
  Container(
    color: Colors.deepOrangeAccent,
  ),
  Container(
    color: Colors.redAccent,
  ),
  Container(
    color: Colors.blueAccent,
  ),
  Container(
    color: Colors.greenAccent,
  ),
  Container(
    color: Colors.orangeAccent,
  ),
  Container(
    color: Colors.purpleAccent,
  ),
  Container(
    color: Colors.grey,
  ),
  Container(
    color: Colors.black,
  ),
  Container(
    color: Colors.deepOrangeAccent,
  ),
];
