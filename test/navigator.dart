import 'package:cupertino_app_layout/cupertino_app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'my_page.dart';

class TabNavigator extends StatefulWidget {
  const TabNavigator({Key key}) : super(key: key);
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  int _currentIndex = 0;
  final _defaultColor = CupertinoColors.inactiveGray;
  final _activeColor = CupertinoColors.darkBackgroundGray;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return CupertinoAppTabScaffold(
      tabbar: CupertinoAppTabBar(
        backgroundColor: CupertinoColors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <Widget>[
          BottomAppBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: _currentIndex != 0 ? _defaultColor : _activeColor,
            ),
            title: Text(
              '首页',
              style: TextStyle(
                color: _currentIndex != 0 ? _defaultColor : _activeColor,
                fontWeight:
                    _currentIndex != 0 ? FontWeight.w400 : FontWeight.w600,
              ),
            ),
          ),
          BottomAppBarItem(
            icon: Icon(
              CupertinoIcons.person,
              color: _currentIndex != 1 ? _defaultColor : _activeColor,
            ),
            title: Text(
              '我的',
              style: TextStyle(
                color: _currentIndex != 1 ? _defaultColor : _activeColor,
                fontWeight:
                    _currentIndex != 1 ? FontWeight.w400 : FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      tabBuilder: Builder(
        builder: (_) {
          switch (_currentIndex) {
            case 0:
              return HomePage();
              break;
            case 1:
              return MyPage();
              break;
            default:
              return SizedBox();
          }
        },
      ),
    );
  }
}
