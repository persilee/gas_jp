import 'package:flutter/material.dart';
import 'package:gas_jp/pages/home_page.dart';
import 'package:gas_jp/pages/business_page.dart';
import 'package:gas_jp/pages/my_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey[400];
  final _activeColor = Color.fromRGBO(244, 67, 54, 1);
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: NeverScrollableScrollPhysics(), //控制是否可滑动切换Tab页面
        children: <Widget>[
          HomePage(),
          BusinessPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          elevation: 16,
          iconSize: 36,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _defaultColor,),
              activeIcon: Icon(Icons.home,color: _activeColor,),
              title: Text(
                '首页',
                style: TextStyle(
                  color: _currentIndex != 0 ? _defaultColor : _activeColor,
                  fontSize: 12,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.free_breakfast, color: _defaultColor,),
              activeIcon: Icon(Icons.free_breakfast, color: _activeColor,),
              title: Text(
                '商城',
                style: TextStyle(
                  color: _currentIndex != 1 ? _defaultColor : _activeColor,
                  fontSize: 12,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: _defaultColor,),
              activeIcon: Icon(Icons.person, color: _activeColor,),
              title: Text(
                '账户中心',
                style: TextStyle(
                  color: _currentIndex != 2 ? _defaultColor : _activeColor,
                  fontSize: 12,
                ),
              ),
            ),
          ]),
    );
  }
}
