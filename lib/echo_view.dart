import 'package:flutter/material.dart';
class EchoView extends StatefulWidget {
  String _title;    // 定义私有变量
  EchoView(this._title); // 通过构造传入变量
  @override
  _EchoViewState createState() => _EchoViewState();
}

class _EchoViewState extends State<EchoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title)),
      body: Center(
        child: Text(
          widget._title
        ),
      ),
    );
  }
}
