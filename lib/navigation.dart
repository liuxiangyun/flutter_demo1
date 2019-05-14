import 'package:flutter/material.dart';

// 关于无法找到Navigator的问题    https://www.jianshu.com/p/509b77b26b78
Widget getNavigation() {
  return MaterialApp(
    title: 'demo',
    home: FirstPage(),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一个页面'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Text('点击跳转第二个页面'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二个页面'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('点击返回上一个页面'),
        ),
      ),
    );
  }
}
