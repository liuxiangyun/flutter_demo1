import 'package:flutter/material.dart';
import 'MaterialAppWidget.dart';

Widget getStack() {
  return getCommonMaterialAppWidget(
      'Stack',
      Center(
          child: Stack(
        alignment: FractionalOffset(0.5, 0.90), //x轴，y轴偏移量  0-1
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'http://img1d.xgo-img.com.cn/pics/1538/1537599.jpg'),
            radius: 160.0,
          ),
          Container(
            child: Text('Stack Widget'),
            color: Colors.grey,
            padding: EdgeInsets.all(5.0),
          ),
          Positioned(
            top: 20.0,
            left: 100.0,
            child: Text(
              '美',
              style: TextStyle(color: Colors.red,fontSize: 20.0),
            ),
          ),
          Positioned(
            top: 20.0,
            right: 100.0,
            child: Text(
              '女',
              style: TextStyle(color: Colors.red,fontSize: 20.0),
            ),
          ),
        ],
      )));
}
