import 'package:flutter/material.dart';

class ExpansionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('扩展组件'),
        ),
//        body: _ExpansionTileTest(),
        body: _ExpansionTileList(),
//        body: _ExpansionPanelListTest(),
      ),
    );
  }
}

class _ExpansionTileTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        leading: Icon(
          Icons.account_circle,
          color: Colors.red,
        ),
        title: Text('张三'),
        backgroundColor: Colors.white70,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                '姓名：张三',
              ),
              Text('年龄：25'),
              Text('电话：110'),
            ],
          )
        ],
      ),
    );
  }
}

class _ExpansionTileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
        _ExpansionTileTest(),
      ],
    );
  }
}

class _ExpansionPanelListTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _expansionState();
  }
}

class _expansionState extends State {
  List<bool> list;

  @override
  void initState() {
    super.initState();
    list = List<bool>()
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false)
      ..add(false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (index, isExpand) {
          setState(() {
            list[index] = !isExpand;
          });
        },
        children: list
            .map((bool) => ExpansionPanel(
                  headerBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.red,
                      ),
                      title: Text('张三'),
                    );
                  },
                  isExpanded: bool,
                  body: Column(
                    children: <Widget>[
                      Text(
                        '姓名：张三',
                      ),
                      Text('年龄：25'),
                      Text('电话：110'),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
