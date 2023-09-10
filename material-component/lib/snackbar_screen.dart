import 'package:common/theme/app_colors.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});


  void _showSimpleSnackBar(BuildContext context){
    const snackBar = SnackBar(
      content: Text("Displaying simple snack bar"),
      backgroundColor: purple40,
      duration: Duration(milliseconds: 500),
      showCloseIcon: true,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showActionSnackBar(BuildContext context){
    final snackBar = SnackBar(
      content: const Text("Displaying simple snack bar"),
      backgroundColor: purple40,
      duration: const Duration(seconds: 1),
      action: SnackBarAction(
          label: "Undo",
          onPressed: (){},
          textColor: purple80,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }



  @override
  Widget build(BuildContext context) {
    return ScaffoldAppBarWithInfoAction(
      title: "Snack Bar",
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: double.infinity,
              child: FilledButton(
                  onPressed: (){
                    _showSimpleSnackBar(context);
                  },
                  child: const Text("Display Simple SnackBar")
              ),
            ),


            const Height(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                  onPressed: (){
                    _showActionSnackBar(context);
                  },
                  child: const Text("Display actionable SnackBar")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
