import 'package:flutter/material.dart';
import 'bottom_appbar_widget.dart';   // 导入自定义类
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部不规则按钮导航',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue   // 主题样式
      ),
      home: BottomAppBarWidget(), // 自定义类方法
    );
  }
}
