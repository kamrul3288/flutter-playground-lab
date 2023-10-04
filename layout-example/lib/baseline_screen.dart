import 'package:common/theme/app_typography.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class BaseLineScreen extends StatelessWidget {
  const BaseLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Baseline",
      widgetDescription: "A widget that positions its child according to the child's baseline.",

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15)),
              child: Baseline(
                baseline: 2.0,
                baselineType: TextBaseline.alphabetic,
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.amber,),
                    width: 50,
                    height: 50,
                    child: const Icon(Icons.add),
                  ),
                ),
              ),
            ),
            const Height(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello, ",style: AppTypography.typography.displayLarge,),
                const Baseline(
                    baseline: 0,
                    baselineType: TextBaseline.alphabetic,
                  child: Text("Bangladesh",style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            ),



          ],
        ),
      ),
    );
  }
}
