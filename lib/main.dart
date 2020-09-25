import 'package:cupertino_activity_indicator/cupertino_action_sheet.dart';
import 'package:cupertino_activity_indicator/cupertino_activity_indicator.dart';
import 'package:cupertino_activity_indicator/cupertino_alert_dialog.dart';
import 'package:cupertino_activity_indicator/cupertino_button.dart';
import 'package:cupertino_activity_indicator/cupertino_context_menu.dart';
import 'package:cupertino_activity_indicator/cupertino_dialog_action.dart';
import 'package:cupertino_activity_indicator/cupertino_navigator_bar.dart';
import 'package:cupertino_activity_indicator/cupertino_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// https://flutter.dev/docs/development/ui/widgets/cupertino

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('CupertinoActivityIndicator'),
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(
                builder: (_) => MyPageCupertinoActivityIndicator()
              ));
            },
          ),
          ListTile(
            title: Text('CupertinoNavigatorBar'),
            onTap: (){
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (_) => MyCupertinoNavigatorBar()
                )
              );
            },
          ),
          ListTile(
            title: Text('CupertinoButton'),
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (BuildContext context) {
                    return MyCupertinoButton();
                  }

              ));
            },
          ),
          ListTile(
            title: Text('CupertinoAlertDialog'),
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (BuildContext context) {
                    return MyCupertinoAlertDialog();
                  }

              ));
            },
          ),
          ListTile(
            title: Text('CupertinoActionSheet'),
            onTap: (){
             Navigator.push(context, CupertinoPageRoute(
                 builder: (BuildContext context) {
                   return MyCupertinoActionSheet();
                 }
             ));
           },
          ),
          ListTile(
            title: Text('CupertinoContextMenu'),
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (BuildContext context) {
                    return MyCupertinoContextMenu();
                  }
              ));
            },
          ),
          ListTile(
            title: Text('CupertinoDialog'),
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (BuildContext context) {
                    return MyCupertinoDialogAction();
                  }
              ));
            },
          ),
          ListTile(
            title: Text('CupertinoSwitch'),
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (BuildContext context) {
                    return MyCupertinoSwitch();
                  }
              ));
            },
          ),
          ListTile(
            title: Text('CupertinoTabBar2'),
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (BuildContext context) {
                    return MyCupertinoSwitch();
                  }
              ));
            },
          ),
        ],
      ),
    );
  }
}
