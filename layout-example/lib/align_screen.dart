import 'package:design_system/theme/app_typography.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return ScaffoldInfoActionAppBar(
      title: "Align",
      widgetDescription: "The alignment property describes a point in the child 's coordinate system and a different point in the coordinate system of this widget.",


      //We can also use container
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: Text("Top Left Alignment",style: AppTypography.typography.titleSmall,),
            ),


            Align(
              alignment: Alignment.topRight,
              child: Text("Top Right Alignment",style: AppTypography.typography.titleSmall,),
            ),


            Align(
              alignment: Alignment.center,
              child: Text("Center Alignment",style: AppTypography.typography.titleSmall,),
            ),


            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Bottom Left Alignment",style: AppTypography.typography.titleSmall,),
            ),


            Align(
              alignment: Alignment.bottomRight,
              child: Text("Bottom Right Alignment",style: AppTypography.typography.titleSmall,),
            ),


            //0.5 of  x axis that's means x axis in center and 0.8 is y axis that means 80%
            Align(
              alignment: const Alignment(0.5, 0.8),
              child: Text("Custom Alignment",style: AppTypography.typography.titleSmall,),
            ),

          ],
        ),
      ),

    );
  }
}
