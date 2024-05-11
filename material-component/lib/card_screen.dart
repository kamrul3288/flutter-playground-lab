import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:design_system/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "Card",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              //---------------------- Default Card Example --------------------
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Rounded Card"),
                ),
              ),


              //---------------------- RectangleBorder Card Example --------------------
              const Height(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("RectangleBorder Card"),
                ),
              ),


              //---------------------- Outlined Card Example --------------------
              const Height(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                   side: const BorderSide(color: red,width: 2),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Outlined Card"),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
