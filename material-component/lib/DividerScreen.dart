import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';


class DividerScreen extends StatelessWidget {
  const DividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Divider",

      body: Center(
        child: Divider(
          height: 2,
          thickness: 2,
          indent: 16,
          endIndent: 16,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
