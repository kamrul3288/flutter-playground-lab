import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/cupertino.dart';

class IndicatorCupertinoScreen extends StatelessWidget {
  const IndicatorCupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const ScaffoldActionAppBar(
      title: "Indicator",

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Width(width: double.infinity),

          CupertinoActivityIndicator(),

          Height(height: 20),
          CupertinoActivityIndicator(
            radius: 20,
            color: CupertinoColors.activeBlue,
          ),

          Height(height: 20),
          CupertinoActivityIndicator(
            radius: 20,
            color: CupertinoColors.activeBlue,
            animating: false,
          )

        ],
      ),
    );
  }
}
