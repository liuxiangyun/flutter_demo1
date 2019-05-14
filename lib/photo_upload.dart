import 'package:flutter/material.dart';

class UploadPicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: AppBar(title: Text('上传图片')),
        body: WrapPicWidget(),
      ),
    );
  }
}

///上传图片
class WrapPicWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WrapState();
}

class _WrapState extends State<WrapPicWidget> {
  List<Widget> _list;
  int _no = 0;

  ///添加的图片最大数量
  static const int _max = 9;

  @override
  void initState() {
    super.initState();
    _list = List<Widget>()..add(_buildAddPhoto());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Wrap(
        children: _list,
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 5.0,
        runSpacing: 5.0,
      ),
      padding: const EdgeInsets.all(15.0),
    );
  }

  Widget _buildAddPhoto() {
    return GestureDetector(
      child: Container(
        width: 95.0,
        height: 95.0,
        color: Colors.grey,
        child: Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      onTap: () {
        setState(() {
          if (_list.length <= _max + 1) {
            ///插入图片
            _list.insert(_list.length - 1, _buildPhoto(_no++));

            if (_list.length == _max + 1) {
              ///删除上传图片
              _list.removeAt(_list.length - 1);
            }
          }
        });
      },
    );
  }

  Widget _buildPhoto(int index) {
    return Photo(
      index,
      onTap: (_no) {
        setState(() {
          ///添加上传图片
          if (_list.where((photo)=>photo is Photo).length == _max) {
            _list.add(_buildAddPhoto());
          }

          ///删除指定图片
          _list.removeWhere((photo) {
            if (photo is Photo) {
              return photo.no == _no;
            }
            return false;
          });
        });
      },
    );
  }
}

typedef GestureTapCallback = void Function(int index);

class Photo extends StatelessWidget {
  int _no = 0;

  int get no => _no;

  final GestureTapCallback onTap;

  Photo(this._no, {Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: FractionalOffset(1, 0),
      children: <Widget>[
        Image(
          width: 95.0,
          height: 95.0,
          image: AssetImage('images/yy.jpg'),
          fit: BoxFit.cover,
        ),
        GestureDetector(
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
          onTap: () {
            onTap(_no);
          },
        )
      ],
    );
  }
}
