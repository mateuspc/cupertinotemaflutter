import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPageCupertinoActivityIndicator extends StatefulWidget {
  @override
  _MyPageCupertinoActivityIndicatorState createState() => _MyPageCupertinoActivityIndicatorState();
}

class _MyPageCupertinoActivityIndicatorState extends State<MyPageCupertinoActivityIndicator> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'ritmos',
        trailing: Icon(Icons.home),
        backgroundColor: Colors.grey[200],
        middle: Icon(Icons.home),
        automaticallyImplyMiddle: false,
        actionsForegroundColor: Colors.brown,
      ),
      backgroundColor: Colors.red,
      child: Center(
        child: CupertinoActivityIndicator(
          animating: true,
          radius: 20,
        ),
      ),
    );
  }
}
