/**
 * 我的
 */
import 'package:flutter/cupertino.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key key}) : super(key: key);
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.zero,
        middle: Text('我的'),
      ),
      child: Center(
        child: Text('我的'),
      ),
    );
  }
}
