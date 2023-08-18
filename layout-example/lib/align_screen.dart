import 'package:common/theme/app_colors.dart';
import 'package:common/theme/app_typography.dart';
import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Align Widget"),
        centerTitle: true,
      ),
      backgroundColor: colors(context).white,


      //We can also use container
      body: SafeArea(
        child: Stack(
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: Text("Top Left Alignment",style: AppTypography.typography.titleMedium,),
            ),


            Align(
              alignment: Alignment.topRight,
              child: Text("Top Right Alignment",style: AppTypography.typography.titleMedium,),
            ),


            Align(
              alignment: Alignment.center,
              child: Text("Center Alignment",style: AppTypography.typography.titleMedium,),
            ),


            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Bottom Left Alignment",style: AppTypography.typography.titleMedium,),
            ),


            Align(
              alignment: Alignment.bottomRight,
              child: Text("Bottom Right Alignment",style: AppTypography.typography.titleMedium,),
            ),


            //0.5 of  x axis that's means x axis in center and 0.8 is y axis that means 80%
            Align(
              alignment: const Alignment(0.5, 0.8),
              child: Text("Custom Alignment",style: AppTypography.typography.titleMedium,),
            ),

          ],
        ),
      ),

    );
  }
}
