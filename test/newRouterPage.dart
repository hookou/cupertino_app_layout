/**
 */
import 'package:flutter/cupertino.dart';

const WAREHOUSE_URL = '/warehouse/list';

class NewRouterPage extends StatefulWidget {
  const NewRouterPage({Key key}) : super(key: key);
  @override
  _NewRouterPageState createState() => _NewRouterPageState();
}

class _NewRouterPageState extends State<NewRouterPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.zero,
        middle: Text('新路由页'),
      ),
      child: Center(
        child: Text('新路由页'),
      ),
    );
  }
}
