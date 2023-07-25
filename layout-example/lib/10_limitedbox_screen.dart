
import 'package:common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:common/extension/dialog_extension.dart';

class LimitedBoxScreen extends StatelessWidget {
  const LimitedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Limited Box Widget"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                context.positiveButtonDialog(
                  "A box that limits its size only when it's unconstrained. If this widget's maximum width is unconstrained then its child's width is limited to maxWidth. Similarly, if this widget's maximum height is unconstrained then its child's height is limited to maxHeight."
                );
              },
              icon: const Icon(Icons.info_outline)
          )
        ],
      ),
      backgroundColor: colors(context).white,

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
