import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoNavigatorBar extends StatefulWidget {
  @override
  _MyCupertinoNavigatorBarState createState() => _MyCupertinoNavigatorBarState();
}

class _MyCupertinoNavigatorBarState extends State<MyCupertinoNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: '21',
        backgroundColor: Colors.grey[100],
      ),
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 20,
        ),
      ),
    );
  }
}

