library hookou;

/**
 * 通用布局
 * hookou
 */
import 'package:flutter/cupertino.dart';

const double TAB_BAR_HEIGHT = 50;

/// 页面布局类
class CupertinoAppTabScaffold extends StatefulWidget {
  final Widget tabbar;
  final Widget tabBuilder;

  const CupertinoAppTabScaffold({
    Key key,
    this.tabbar,
    this.tabBuilder,
  }) : super(key: key);
  @override
  CupertinoAppTabScaffoldState createState() => CupertinoAppTabScaffoldState();
}

class CupertinoAppTabScaffoldState extends State<CupertinoAppTabScaffold> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: TAB_BAR_HEIGHT),
          child: widget.tabBuilder,
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: widget.tabbar,
        ),
      ],
    );
  }
}

/// 底部tab类
class CupertinoAppTabBar extends StatefulWidget {
  // 底部tab栏
  final List<Widget> items;
  final Function onTap;
  final int currentIndex;
  final Color backgroundColor;
  final Color activeColor;
  final Color inactiveColor;
  final double iconSize;
  final border;

  const CupertinoAppTabBar({
    Key key,
    this.items,
    this.onTap,
    this.currentIndex = 0,
    this.backgroundColor,
    this.activeColor,
    this.inactiveColor,
    this.iconSize,
    this.border = const Border(
      top: BorderSide(
        color: Color(0x4C000000),
        width: 0.0, // One physical pixel.
        style: BorderStyle.solid,
      ),
    ),
  }) : super(key: key);
  @override
  CupertinoAppTabBarState createState() => CupertinoAppTabBarState();
}

class CupertinoAppTabBarState extends State<CupertinoAppTabBar> {
  int index;

  @override
  void initState() {
    setState(() {
      index = widget.currentIndex;
    });
    super.initState();
  }

  changePage(int i) {
    setState(() {
      index = i;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      height: TAB_BAR_HEIGHT,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: widget.border,
        color: widget.backgroundColor ?? null,
      ),
      child: Row(
        children: getBottomBar(widget.items),
      ),
    );
  }

  List<Widget> getBottomBar(List<Widget> items) {
    return items
        .asMap()
        .keys
        .map<Widget>((i) => createBars(items[i], i))
        .toList();
  }

  Widget createBars(Widget item, int i) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          changePage(i);
          if (widget.onTap != null) {
            widget.onTap(i);
          }
        },
        child: Container(
          alignment: Alignment.center,
          color: index == i
              ? widget.activeColor ?? null
              : widget.inactiveColor ?? null,
          child: item,
        ),
      ),
    );
  }
}

/// 底部barItem
class BottomAppBarItem extends StatefulWidget {
  final Widget icon;
  final Widget title;

  const BottomAppBarItem({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);
  @override
  BottomAppBarItemState createState() => BottomAppBarItemState();
}

class BottomAppBarItemState extends State<BottomAppBarItem> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        widget.icon,
        widget.title,
      ],
    );
  }
}
