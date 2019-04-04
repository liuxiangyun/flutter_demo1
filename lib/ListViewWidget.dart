import 'package:flutter/material.dart';

Widget getListView() {
  return ListViewWidget(
      items: List<String>.generate(3000, (int index) => "item $index"));
}

class ListViewWidget extends StatelessWidget {
  final List<String> items;

  const ListViewWidget({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
//        body: ListView(
//          children: <Widget>[
////            ListTile(
////                title: Text('title'),
////                subtitle: Text('subtitle'),
////                leading: Icon(Icons.add_call)),
//            Text('item 1'),
//            Text('item 1'),
//            Text('item 1'),
//            Text('item 1'),
//            Text('item 1'),
//            Text('item 1'),
//            Text('item 1'),
//            Text('item 1'),
//            Text('item 1'),
//            Text('item 1'),
//          ],
//          scrollDirection: Axis.horizontal,
//        ),

        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              subtitle: Text("subTitle$index"),
            );
          },
        ),
      ),
    );
  }
}
