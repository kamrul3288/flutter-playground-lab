
import 'package:common/widget/scaffold_appbar.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';


class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppBarWithInfoAction(
      title: "Wrap",
      widgetDescription: "A widget that displays its children in multiple horizontal or vertical runs.",
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              children: [
                Chip(
                  side: BorderSide(color: Theme.of(context).colorScheme.primary),
                  avatar:const Icon(FontAwesomeIcons.barsProgress),
                  label: const Text('All'),

                ),

                Chip(
                  side: BorderSide(color: Theme.of(context).colorScheme.primary),
                  avatar:const Icon(FontAwesomeIcons.productHunt),
                  label: const Text('Ongoing'),

                ),

                Chip(
                  side: BorderSide(color: Theme.of(context).colorScheme.primary),
                  avatar:const Icon(FontAwesomeIcons.check),
                  label: const Text('Confirmed'),

                ),

                Chip(
                  side: BorderSide(color: Theme.of(context).colorScheme.primary),
                  avatar:const Icon(FontAwesomeIcons.database),
                  label: const Text('History'),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
