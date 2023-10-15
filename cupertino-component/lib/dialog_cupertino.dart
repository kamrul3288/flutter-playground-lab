import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/cupertino.dart';

class DialogCupertinoScreen extends StatefulWidget {
  const DialogCupertinoScreen({super.key});
  @override
  State<DialogCupertinoScreen> createState() => _DialogCupertinoScreenState();
}


class _DialogCupertinoScreenState extends State<DialogCupertinoScreen> with SingleTickerProviderStateMixin{
  void _showCupertinoAlertDialog(BuildContext context){
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context){
          return CupertinoAlertDialog(
            title: const Text("What is Lorem Ipsum?"),
            content: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy"),
            actions: [
              CupertinoDialogAction(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")
              ),
              CupertinoDialogAction(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                isDestructiveAction: true,
                child: const Text("Confirm"),
              ),
            ],
          );
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Dialog",


      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            SizedBox(
              width: double.infinity,
              child: CupertinoButton.filled(
                child: const Text("Show Alert Dialog"),
                onPressed: (){
                  _showCupertinoAlertDialog(context);
                },
              ),
            ),


            const Height(height: 16),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton.filled(
                child: const Text("Show Dialog Action"),
                onPressed: (){
                  _showCupertinoAlertDialog(context);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
