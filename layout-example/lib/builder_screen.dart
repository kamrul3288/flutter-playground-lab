import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class BuilderScreen extends StatelessWidget {
  const BuilderScreen({super.key});

  void _showSimpleSnackBar(BuildContext context){
    const snackBar = SnackBar(
      content: Text("Displaying simple snack bar"),
      backgroundColor: purple40,
      duration: Duration(milliseconds: 500),
      showCloseIcon: true,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "Builder",
      widgetDescription: "A stateless utility widget whose provide parent build context to create the widget's child",

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child:  SizedBox(
            width: double.infinity,
            child: Builder(
              builder: (context) {
                return FilledButton(
                  onPressed: (){
                    _showSimpleSnackBar(context);
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                      ),
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
                  ),
                  child: const Text("Show snack bar"),
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
