import 'package:flutter/material.dart';

Widget index() {
  return MaterialApp(
    title: 'demo',
    home: IndexPage(),
  );
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: SelectButton());
  }
}

class SelectButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          _selectContact(context);
        },
        child: Text('选择联系人'),
      ),
    );
  }

  ///异步方法  async
  _selectContact(BuildContext context) async {
    ///等待异步执行完毕  await
    final contact = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ContactListPage(List<Contact>.generate(
                1000,
                (index) => Contact(
                    '上海市虹口区西江湾路--$index', '技术胖--$index', '000$index')))));

    Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(
            '我是${contact.name},我居住在${contact.address},我的电话是${contact.phone}',
            style: TextStyle(color: Colors.red))));
  }
}

class ContactListPage extends StatelessWidget {
  final List<Contact> contacts;

  ContactListPage(this.contacts, {Key key})
      : assert(contacts != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('联系人列表'),
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.pop(context, contacts[index]);
                },
                leading: Icon(Icons.contacts),
                title: Text(contacts[index].name),
                subtitle:
                    Text('${contacts[index].name}  ${contacts[index].phone}'),
              )),
    );
  }
}

class Contact {
  final String address;
  final String name;
  final String phone;

  Contact(this.address, this.name, this.phone);
}
