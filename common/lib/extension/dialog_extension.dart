import 'package:common/theme/app_colors.dart';
import 'package:flutter/material.dart';


extension AlertDialogExtension on BuildContext{

  Future<void> positiveButtonDialog(String message){
    return showDialog(
        context: this,
        builder: (BuildContext context){
          return AlertDialog.adaptive(
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child:  Text("Okay",style: TextStyle(color: colors(context).black),)
              )
            ],
          );
        }
    );
  }
}