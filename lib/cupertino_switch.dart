import 'package:flutter/cupertino.dart';

class MyCupertinoSwitch extends StatefulWidget {
  @override
  _MyCupertinoSwitchState createState() => _MyCupertinoSwitchState();
}

class _MyCupertinoSwitchState extends State<MyCupertinoSwitch> {

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Voltar',
      ),
      child: Center(
        child: CupertinoSwitch(
          value: status,
          onChanged: (value){
            setState(() {
              status = !status;
            });
          },
        ),
      ),
    );
  }
}
