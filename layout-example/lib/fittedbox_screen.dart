
import 'package:design_system/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:design_system/component/scaffold_appbar.dart';

class FittedBoxWidgetScreen extends StatelessWidget {
  const FittedBoxWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
        title: "FittedBox",
        widgetDescription: "FittedBox Widget is a basic Widget to help in making a snappy and neater approach to contain a child inside a parent. The fundamental purpose behind utilizing the FittedBox is to make the App UI look neater for dynamic children with shifting lengths.",
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              //------------Without fitted box example------------------
              const Text("Example Without fitted box"),
              Container(
                width: 180,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(5)
                ),
                
                child:  Center(child: Text("This is fitted box example.",style: AppTypography.typography.headlineSmall,)),
              ),


              //------------With fitted box example------------------
              const SizedBox(height: 30,),
              const Text("Example with fitted box"),
              Container(
                width: 180,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(5)
                ),

                child:  FittedBox(child: Text("This is fitted box example.", style: AppTypography.typography.headlineSmall,)),
              )
            ],
          ),
          
        ),
    );
  }
}
