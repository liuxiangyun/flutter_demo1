import 'package:flutter/material.dart';
import 'MaterialAppWidget.dart';

Widget assets(){
  return getCommonMaterialAppWidget('asstes 资源使用', 
  Center(
    child: Image.asset('images/yy.jpg'),
  ));
}