import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoDialogAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Voltar',
      ),
      child: Center(
        child: CupertinoButton.filled(child: Text('Cuper Alert Dialog with BtnAction',  style: TextStyle(
          fontSize: 20

        ),), onPressed: (){
            showCupertinoDialog(
                context: context,
                barrierDismissible: true,
                builder: (context){
                  return CupertinoAlertDialog(
                    title: Text('Atenção'),
                    content: Text('Deseja realmente excluir essa imagem?'),
                    actions: [
                      CupertinoDialogAction(
                        child: Text('Cancelar'),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoDialogAction(
                        child: Text('Ok'),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });
        })
      )
    );
  }
}
