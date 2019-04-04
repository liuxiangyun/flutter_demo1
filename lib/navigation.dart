import 'package:flutter/material.dart';
import 'MaterialAppWidget.dart';

Widget getNavigation() {
  final List<Contact> contacts = List<Contact>.generate(
      1000, (index) => Contact('上海市虹口区西江湾路', '技术胖', '110'));

  return getCommonMaterialAppWidget(
      "联系人",
      ListView.builder(
        itemBuilder: (context, index) => ListTile(
            title: Text(contacts[index].address),
            leading: Icon(Icons.contacts),
            subtitle: Text('${contacts[index].name}:${contacts[index].phone}')),
        itemCount: contacts.length,
      ));
}

class Contact {
  final String address;
  final String name;
  final String phone;

  Contact(this.address, this.name, this.phone);
}
