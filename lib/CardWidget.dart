import 'package:flutter/material.dart';
import 'MaterialAppWidget.dart';

Widget getCard() {
  return getCommonMaterialAppWidget(
      'card',
//      ListView(children: <Widget>[
//        Card(
//            child: ListTile(
//          leading: Icon(Icons.contacts),
//          title: Text('上海市虹口区西江湾路'),
//          subtitle: Text('技术胖：110'),
//        )),
//        Card(
//            child: ListTile(
//          leading: Icon(Icons.contacts),
//          title: Text('上海市虹口区西江湾路'),
//          subtitle: Text('技术胖：110'),
//        )),
//        Card(
//            child: ListTile(
//          leading: Icon(Icons.contacts),
//          title: Text('上海市虹口区西江湾路'),
//          subtitle: Text('技术胖：110'),
//        )),
//        Card(
//            child: ListTile(
//          leading: Icon(Icons.contacts),
//          title: Text('上海市虹口区西江湾路'),
//          subtitle: Text('技术胖：110'),
//        ))
//      ]));

      Card(
          margin: EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('上海市虹口区西江湾路'),
                subtitle: Text('技术胖：110'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('上海市虹口区西江湾路'),
                subtitle: Text('技术胖：110'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('上海市虹口区西江湾路'),
                subtitle: Text('技术胖：110'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('上海市虹口区西江湾路'),
                subtitle: Text('技术胖：110'),
              )
            ],
          )));
}
