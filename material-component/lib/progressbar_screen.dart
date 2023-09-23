import 'package:common/theme/app_colors.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class ProgressbarScreen extends StatefulWidget {
  const ProgressbarScreen({super.key});

  @override
  State<ProgressbarScreen> createState() => _ProgressbarScreenState();
}

class _ProgressbarScreenState extends State<ProgressbarScreen> {
  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "Progressbar",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            LinearProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
              backgroundColor: colors(context).progressbarBackground,
            ),

            const Height(height: 32),
            SizedBox(
              height: 10,
              child: LinearProgressIndicator(
               color: Theme.of(context).colorScheme.primary,
                backgroundColor: colors(context).progressbarBackground,
              ),
            ),

            const Height(height: 32),
            CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
              backgroundColor: colors(context).progressbarBackground,
            ),

            const Height(height: 32),
            CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
              backgroundColor: colors(context).progressbarBackground,
              strokeWidth: 10,
            ),

            const Height(height: 32),
            CircularProgressIndicator.adaptive(
              backgroundColor: colors(context).progressbarBackground,
              strokeWidth: 10,
              valueColor: const AlwaysStoppedAnimation<Color>(purple40),
            )

          ],


        ),
      ),
    );
  }
}
