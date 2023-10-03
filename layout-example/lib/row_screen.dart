import 'package:common/theme/app_colors.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Row",
      widgetDescription: "A widget that displays its children in a horizontal array",


      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Row(
              children: [
                Text("Row-1", style: Theme.of(context).textTheme.titleMedium,),
                const SizedBox(width: 16,),
                Text("Row-2", style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),


            const SizedBox(height: 24,),
            Text("Row Horizontal Center:", style: Theme.of(context).textTheme.labelSmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Row-1", style: Theme.of(context).textTheme.titleMedium,),
                const SizedBox(width: 16,),
                Text("Row-2", style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),


            const SizedBox(height: 24,),
            Text("Row Horizontal SpaceBetween:", style: Theme.of(context).textTheme.labelSmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Row-1", style: Theme.of(context).textTheme.titleMedium,),
                Text("Row-2", style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),



            const SizedBox(height: 24,),
            Text("Row Vertical Alignment:", style: Theme.of(context).textTheme.labelSmall),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: purpleGrey40,
                    shape: BoxShape.circle
                  ),
                ),
                const SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kamrul Hasan", style: Theme.of(context).textTheme.bodyMedium,),
                    Text("+88xxxxxxxx", style: Theme.of(context).textTheme.bodySmall,)
                  ],
                )
              ],
            ),


            const SizedBox(height: 24,),
            Text("Row Weight:", style: Theme.of(context).textTheme.labelSmall),
            Row(
              children: [
                Expanded(
                  flex: 30,
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: const Center(
                      child: Text("Weight 30%"),
                    ),
                  )
                ),

                Expanded(
                  flex: 45,
                    child: Container(
                      height: 100,
                      color: Colors.blue.shade300,
                      child: const Center(
                        child: Text("Weight 45%"),
                      ),
                    )
                ),

                Expanded(
                  flex: 35,
                    child: Container(
                      height: 100,
                      color: Colors.blue.shade400,
                      child: const Center(
                        child: Text("Weight 35%"),
                      ),
                    )
                )
              ],
            )

          ],
        ),
      ),

    );
  }
}
