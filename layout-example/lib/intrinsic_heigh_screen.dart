import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class IntrinsicHeightScreen extends StatelessWidget {
  const IntrinsicHeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "IntrinsicHeightScreen",
      widgetDescription: "A widget that sizes its child to the child's intrinsic height",

      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 200,
              color: Colors.amber,
            ),

            Container(
              width: 80,
              height: 300,
              color: Colors.blueGrey,
            ),

            Container(
              width: 120,
              height: 250,
              color: Colors.deepPurpleAccent,
            )
          ],
        ),
      ),
    );
  }
}
