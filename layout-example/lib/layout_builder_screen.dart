import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "LayoutBuilder",
      widgetDescription: "Builds a widget tree that can depend on the parent widget's size.",

      body: LayoutBuilder(
        builder: (context,constraints){
          return Center(
            child: Text(constraints.maxWidth> 600 ? "This is web Screen" : "This is mobile screen"),
          );
        },
      ),
    );
  }
}
