import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Center",

      body:  Center(
        child:  Container(
          width: 100,
          height: 100,
          color: purple40,
        ),
      ),
      
    );
  }
}
