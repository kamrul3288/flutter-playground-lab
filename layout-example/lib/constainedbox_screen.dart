import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';


class ConstrainedBoxScreen extends StatelessWidget {
  const ConstrainedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "ConstrainedBox",
      widgetDescription: "ConstrainedBox is a built-in widget in flutter SDK. Its function is to add size constraints to its child widgets.",

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),


          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 250,minHeight: 50),
            child: Container(
              color: purple80,
              child: const Text("minWidth: 250: minHeight:100"),
            ),
          ),


          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300,maxHeight: 50),
            child: Container(
              color: pink80,
              child: const Text("maxWidth: 300: maxHeight:50: Lorem Lorem Lorem Lorem"),
            ),
          )

        ],
      ),

    );
  }
}
