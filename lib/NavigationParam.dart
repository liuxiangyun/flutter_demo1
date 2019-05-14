import 'package:flutter/material.dart';

class Contact {
  final String address;
  final String name;
  final String phone;

  Contact(this.address, this.name, this.phone);
}

Widget getNavigationParam() {
  return MaterialApp(
    title: 'demo',
    home: ContactListPage(List<Contact>.generate(1000,
        (index) => Contact('上海市虹口区西江湾路--$index', '技术胖--$index', '000$index'))),
  );
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ContactDetailPage(contacts[index])));
                },
                leading: Icon(Icons.contacts),
                title: Text(contacts[index].name),
                subtitle:
                    Text('${contacts[index].name}  ${contacts[index].phone}'),
              )),
    );
  }
}

class ContactDetailPage extends StatelessWidget {
  final Contact contact;

  ContactDetailPage(this.contact, {Key key})
      : assert(contact != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('联系人详情'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Text(
            '我是${contact.name},我居住在${contact.address},我的电话是${contact.phone}',
            style: TextStyle(color: Colors.red, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
