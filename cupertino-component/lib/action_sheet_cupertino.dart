import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/cupertino.dart';

class ActionSheetCupertinoScreen extends StatelessWidget {
  const ActionSheetCupertinoScreen({super.key});


  void _showActionSheet(BuildContext context){
    showCupertinoModalPopup(
        context: context,
        builder: (context){
          return CupertinoActionSheet(
            title: const Text("Today's Task!"),
            message: const Text("What would you like to do?"),
            actions: [

              CupertinoActionSheetAction(
                onPressed: (){},
                child: const Text("Share"),
              ),

              CupertinoActionSheetAction(
                onPressed: (){},
                child: const Text("Report"),
              ),

              CupertinoActionSheetAction(
                isDestructiveAction: true,
                onPressed: (){},
                child: const Text("Delete"),
              )

            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text("Cancel"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Action sheet",

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoButton.filled(
              child: const Text("Show Action Sheet"),
              onPressed: (){
                _showActionSheet(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
