import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class OverflowBoxScreen extends StatelessWidget {
  const OverflowBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "OverflowBox",
      widgetDescription: "A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.",

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15)
              ),

              child: OverflowBox(
                maxHeight: 200,
                maxWidth: 200,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
            ),
            
            const Height(height: 50),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Parenet Container size is 100 and child Container size is 200. Child overflow the parent"),
            )
            
            
          ],
        ),
      ),
    );
  }
}
