/**
 * 首页
 */
import 'package:flutter/cupertino.dart';

import 'newRouterPage.dart';

const WAREHOUSE_URL = '/warehouse/list';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.zero,
        middle: Text('首页'),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.of(context).push(
            CupertinoPageRoute(builder: (context) => NewRouterPage()),
          );
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            '点击跳转新路由页面',
          ),
        ),
      ),
    );
  }
}
