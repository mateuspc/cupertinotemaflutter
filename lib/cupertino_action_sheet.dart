import 'package:flutter/cupertino.dart';

class MyCupertinoActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'home',
      ),
      child: Center(
        child: CupertinoButton.filled(
            child: Text('Show Cupertino Action Sheet'),
            onPressed: (){
              showCupertinoModalPopup(context: context, builder: (context){
                return CupertinoActionSheet(
                  title: Text('Taxa de entrega'),
                  message: Text('A taxa de entrega é definida pela empresa'),
                  actions: [
                    CupertinoButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text('Mais informacoes'),
                    )
                  ],
                  cancelButton: CupertinoButton(
                    child: Text('Entendi'),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),

                );
              });
            }),
      ),
    );
  }
}
