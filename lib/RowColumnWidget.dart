import 'MaterialAppWidget.dart';
import 'package:flutter/material.dart';

Widget getRowWidget() {
  return getCommonMaterialAppWidget(
      'RowWidget',
      Row(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
//              Scaffold.of(context).showSnackBar( SnackBar(content: Text('item --1 click')));
            },
            color: Colors.deepOrangeAccent,
            child: Text("item -- 1"),
          ),
          //Expanded 占满剩余空间，类似Android里面权重
          Expanded(
              child: RaisedButton(
            onPressed: () {},
            color: Colors.greenAccent,
            child: Text("item -- 2"),
          )),
          RaisedButton(
            onPressed: () {},
            color: Colors.blueAccent,
            child: Text("item -- 3"),
          )
        ],
      ));
}

Widget getColumnWidget() {
  return getCommonMaterialAppWidget(
    'ColumnWidget',
    Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.deepOrangeAccent,
          child: Text("item -- 1"),
          width: 60,
          alignment: Alignment.center,
        ),
        Container(
          width: 60,
          color: Colors.greenAccent,
          child: Text("item -- 2"),
          alignment: Alignment.center,
        ),
        Container(
          width: 60,
          color: Colors.blueAccent,
          child: Text("item -- 3"),
          alignment: Alignment.center,
        )
      ],
    )),
  );
}
