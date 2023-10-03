
import 'package:common/theme/app_colors.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class LimitedBoxScreen extends StatelessWidget {
  const LimitedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Limited Box",
      widgetDescription: "A box that limits its size only when it's unconstrained. If this widget's maximum width is unconstrained then its child's width is limited to maxWidth. Similarly, if this widget's maximum height is unconstrained then its child's height is limited to maxHeight.",


      body: ListView.builder(
        itemCount: 15,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context,index){
          return LimitedBox(
            maxHeight: 200,
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: purple80,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(child: Text("Limited Box Item")),
            ),
          );
        },
      ),

    );
  }
}
