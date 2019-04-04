import 'package:flutter/material.dart';

class TextContainerImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "my demo",
        home: Scaffold(
          appBar: AppBar(
            title: Text("my demo"),
          ),
          body: Center(
            child: Container(
//              child: textWidget,
              child: Image.network(
                "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1700988635,275822412&fm=27&gp=0.jpg",
                fit: BoxFit.contain,
                color: Colors.redAccent,
                colorBlendMode: BlendMode.multiply,
                repeat: ImageRepeat.repeat,
                width: 20.0,
                height: 20.0,
              ),
//              alignment: Alignment.topCenter,   //设置alignment后Image的fit属性无效果
              width: 500.0,
              height: 400.0,
//              color: Colors.grey,   //color 和 decoration 不能同时设置
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green[200],
                    Colors.green[500],
                    Colors.purple[200],
                    Colors.purple[500],
                    Colors.blue[200],
                    Colors.blue[500]
                  ]),
                  border: Border.all(width: 2.0, color: Colors.black)),
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(15.0),
            ),
          ),
        ));
  }

  static var text =
      "这是一个flutter 的实例demo,这是一个flutter 的实例demo,这是一个flutter 的实例demo,这是一个flutter 的实例demo.";
  final textWidget = Text(text,
      style: TextStyle(
        color: Colors.red,
        fontSize: 20.0,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        decorationStyle: TextDecorationStyle.solid,
      ),
      textAlign: TextAlign.left,
      maxLines: 2,
      overflow: TextOverflow.ellipsis);
}

