import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';


class IntrinsicWidthScreen extends StatelessWidget {
  const IntrinsicWidthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "IntrinsicWidth",
      widgetDescription: "A widget that sizes its child to the child's maximum intrinsic width.",

      body: IntrinsicWidth(
        stepWidth: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 30,
              color: Colors.amber,
            ),

            Container(
              width: 50,
              height: 100,
              color: Colors.blueAccent,
            ),

            Container(
              width: 70,
              height: 100,
              color: Colors.blueGrey,
            ),


            Container(
              width: 150,
              height: 100,
              color: Colors.red,
            ),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley "),
            )

          ],
        ),
      ),
    );
  }
}
