import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoAlertDialog extends StatefulWidget {
  @override
  _MyCupertinoAlertDialogState createState() => _MyCupertinoAlertDialogState();
}

class _MyCupertinoAlertDialogState extends State<MyCupertinoAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Chats',
      ),
      child: Center(
        child: CupertinoButton(
          color: Colors.blue,
          onPressed: (){
           showCupertinoDialog(context: context,
              builder: (context) => CupertinoAlertDialog(
                title: Text('Allow "Maps" to access your location while you use the app?'),
                content: Text('Your current location will be displayed on the map and used fofr directions, neatby search resiçts, amd estimated travel times'),
                actions: [
                  CupertinoButton(
                    onPressed: (){
                     Navigator.pop(context);
                    },
                    child: Text('Don\'t Allow'),
                  ),
                  CupertinoButton(onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Allow'),
                  )
                ],
              ));
          },
          child: Text('Show CupertinoAlertDialog', style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}
