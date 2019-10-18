import 'package:flutter/cupertino.dart';
import 'navigator.dart';

void main() => runApp(MyAppCupertino());

class MyAppCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CupertinoApp(
        home: TabNavigator(),
      );
}
