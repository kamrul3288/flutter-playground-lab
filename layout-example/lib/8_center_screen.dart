import 'package:common/theme/app_colors.dart';
import 'package:common/theme/app_typography.dart';
import 'package:flutter/material.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center Widget"),
        centerTitle: true,
      ),
      backgroundColor: colors(context).white,
      
      
      body:  Center(
        child: Text("Center Text",style: AppTypography.typography.displaySmall),
      ),
      
    );
  }
}
