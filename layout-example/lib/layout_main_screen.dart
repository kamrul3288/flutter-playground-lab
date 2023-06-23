import 'package:flutter/material.dart';

class LayoutMainScreen extends StatelessWidget {
  const LayoutMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layouts"),
        centerTitle: true,
      ),
    );
  }
}
