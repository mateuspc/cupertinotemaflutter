import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoContextMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('CupertinoAlertDialogAction'),
      ),
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
            child: Container(
              color: Colors.red,
            ),
            actions: [
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),

    );
  }
}
