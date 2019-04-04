import 'package:flutter/material.dart';

MaterialApp getCommonMaterialAppWidget(String title,Widget body) {

  return MaterialApp(
    title: "demo",
    home: Scaffold(
      appBar: AppBar(title:Text(title)),
      body: body,
    ),
  );

}
