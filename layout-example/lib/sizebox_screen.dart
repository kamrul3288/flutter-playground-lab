
import 'package:common/theme/app_colors.dart';
import 'package:common/theme/app_typography.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class SizeBoxWidgetScreen extends StatelessWidget {
  const SizeBoxWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(

      title: "SizeBox Widget",
      widgetDescription: "SizedBox is a built-in widget in flutter SDK.  It is a simple box with a specified size. It can be used to set size constraints to the child widget, put an empty SizedBox between the two widgets to get some space in between, or something else.",

      body: SafeArea(
        child: Column(
          
          children: [

            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                child:  Text(
                  "SizeBox with full width and 50 height",
                  style: AppTypography.typography.labelLarge?.copyWith(color: colors(context).black),
                ),
              ),
            ),


            const SizedBox(height: 20,),
            SizedBox.fromSize(
              size: const Size(double.infinity, 50),
              child: ElevatedButton(
                onPressed: (){},
                child:  Text(
                  "SizeBox with full width and 50 height",
                  style: AppTypography.typography.labelLarge?.copyWith(color: colors(context).black),
                ),
              ),
            ),


            // const SizedBox(height: 50,),
            // SizedBox.expand(
            //   child: ElevatedButton(
            //     onPressed: (){},
            //     child:  Text(
            //       "SizeBox with full width and 50 height",
            //       style: AppTypography.typography.labelLarge?.copyWith(color: colors(context).black),
            //     ),
            //   ),
            // )
            
          ],

        ),
      ),
    );
  }
}
