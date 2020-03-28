import 'package:flutter/material.dart';
import 'echo_view.dart';
class BottomAppBarWidget extends StatefulWidget {
  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  List<Widget> _echoList = List();      //  通过List存放底部两个页面
  int _pageIndex = 0;   // 定义页面索引
  @override
  void initState() {      // 初始化父类静态方法
    // TODO: implement initState
    super.initState();
    _echoList..add(EchoView('Home'))..add(EchoView('Person'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // 返回脚手架
      body: _echoList[_pageIndex],
      floatingActionButton: FloatingActionButton(     // 中间那个圆形按钮
        onPressed: (){    // 点击按钮触发返回新页面
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return EchoView('New Pages');
          }));
        },    // 点击事件
        tooltip: '这是圆形按钮',    // 长按按钮提示信息
        child: Icon(
          Icons.add,    // 按钮内图标
          color: Colors.white,    // 按钮内图标颜色
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,   // 按钮位置,可以自己根据项目调整。
      bottomNavigationBar: BottomAppBar(    // 定义两边的按钮
        color: Colors.lightBlue,    // 底栏背景色
        shape: CircularNotchedRectangle(),    // 底栏中间圆形缺口
        child: Row(   // 定义低栏两个按钮排列方式
          mainAxisSize: MainAxisSize.max, // 按钮最大化
          mainAxisAlignment: MainAxisAlignment.spaceAround, // 底栏按钮位置
          children: <Widget>[   // 定义数组容器存放两个按钮
            IconButton(   // 左边按钮
              onPressed: (){
                setState(() {
                  _pageIndex = 0;
                });
              },    // 点击事件
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            IconButton(   // 右边按钮
              onPressed: (){
                setState(() {
                  _pageIndex = 1;
                });
              },    // 点击事件
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
