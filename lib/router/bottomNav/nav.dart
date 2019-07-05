import 'package:flutter/material.dart';
import '../pageOne/index.dart';
import '../pageTwo/index.dart';
import '../pageThree/index.dart';
import '../pageFour/index.dart';

List<Widget> pages = new List();
//initState是初始化函数，在绘制底部导航控件的时候就把这3个页面添加到list里面用于下面跟随标签导航进行切换显示
void initState() {
  pages
    ..add(OneWidget())
    ..add(TwoWidget())
    ..add(FourWidget())
    ..add(ThreeWidget());
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    initState();
    return new BottomNavigationWidgetState();
  }
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;
  var appBarTitles = ['测试', '首页', '资讯', '我的']; // tabbar显示的文字
  @override
  Widget build(BuildContext context) {
    Text getTabTitle(int curIndex) {
      var color;
      if (curIndex == _currentIndex) {
        color = Colors.blueAccent;
      } else {
        color = Colors.black;
      }
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: color));
    }
    /*
    返回一个脚手架，里面包含两个属性，一个是底部导航栏，另一个就是主体内容
     */
    return new Scaffold(
        appBar: AppBar(title: Center(child: Text(appBarTitles[_currentIndex]))),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //底部导航栏的创建需要对应的功能标签作为子项，这里我就写了3个，每个子项包含一个图标和一个title。
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wb_iridescent,
                ),
                title: getTabTitle(0)
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: getTabTitle(1)
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.business,
                ),
                title:getTabTitle(2)
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.mood,
                ),
                title: getTabTitle(3)
            ),
          ],
          //这是底部导航栏自带的位标属性，表示底部导航栏当前处于哪个导航标签。给他一个初始值0，也就是默认第一个标签页面。
          currentIndex: _currentIndex,
          //这是点击属性，会执行带有一个int值的回调函数，这个int值是系统自动返回的你点击的那个标签的位标
          onTap: (int i) {
            //进行状态更新，将系统返回的你点击的标签位标赋予当前位标属性，告诉系统当前要显示的导航标签被用户改变了。
            setState(() {
              _currentIndex = i;
            });
          },
        ),

        body: pages[_currentIndex]);
  }
}

