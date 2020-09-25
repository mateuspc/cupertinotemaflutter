import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoButton extends StatefulWidget {
  @override
  _MyCupertinoButtonState createState() => _MyCupertinoButtonState();
}

class _MyCupertinoButtonState extends State<MyCupertinoButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Ritmos',
        middle: Column(
          children: [
            Text('FlutterES', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),),
            Text('Digitando...', style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              color: Colors.grey
            ),)
          ],
        ),
      ),
      // child: Center(
      //   child: CupertinoActivityIndicator(
      //     animating: true,
      //     radius: 20,
      //   ),
      // ),
      child: Center(
        child: CupertinoButton(
          color: Colors.green,
          onPressed: () {
             print('Clique no cupertino button!');
          },
          child: Text('Entendi', style: TextStyle(
            fontSize: 25
          ),),
        ),
      ),
    );
  }
}
