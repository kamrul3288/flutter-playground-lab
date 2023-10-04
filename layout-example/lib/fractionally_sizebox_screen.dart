import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  const FractionallySizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "FractionallySizedBox",
      widgetDescription: "A widget that sizes its child to a fraction of the total available space.",
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                const FractionallySizedBox(widthFactor: 1,),

                const Height(height: 20),
                FractionallySizedBox(
                    widthFactor: 0.9,
                    child: FilledButton(
                        onPressed: () {},
                        child: const Text("FractionallySizedBox"),
                    ),
                ),


                const Height(height: 20),
                Container(
                    width: 300,
                    height: 200,
                    color: Colors.red,
                    child: FractionallySizedBox(
                        alignment: Alignment.bottomCenter,
                        widthFactor: 0.8,
                        heightFactor: 0.3,
                        child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red.shade300)),
                            child: const Text("FractionallySizedBox"),
                        ),
                    ),
                ),
                const Height(height: 40),

                Container(
                    height: 100,
                    color: Colors.amber,
                ),

                const Flexible(child: FractionallySizedBox(heightFactor: 1)),

                Container(
                    height: 100,
                    color: Colors.black12,
                )

            ],
        ),
      ),
    );
  }
}
