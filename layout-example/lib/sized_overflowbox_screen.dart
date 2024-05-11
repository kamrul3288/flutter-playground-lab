import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class SizedOverflowBoxScreen extends StatelessWidget {
  const SizedOverflowBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "SizedOverflowBox",
      widgetDescription: "A widget that is a specific size but passes its original constraints through to its child, which may then overflow.",

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15)
              ),

              child: const SizedOverflowBox(
                size: Size(100, 100),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Parent Container size is 150"),
                )
              ),
            ),


          ],
        ),
      ),
    );
  }
}
