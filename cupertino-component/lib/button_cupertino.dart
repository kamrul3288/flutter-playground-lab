import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/cupertino.dart';

class ButtonCupertinoScreen extends StatelessWidget {
  const ButtonCupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Button",

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const CupertinoButton(
              onPressed: null,
              child: Text('Disabled'),
            ),


            const Height(height: 24),
            CupertinoButton(
              onPressed: (){},
              child: const Text('Enabled'),

            ),


            const Height(height: 24),
            const CupertinoButton.filled(
              onPressed: null,
              child: Text('Disabled'),
            ),


            const Height(height: 24),
            CupertinoButton.filled(
              onPressed: (){},
              child: const Text('Enabled'),
            ),


            const Height(height: 24),
            CupertinoButton.filled(
              padding: EdgeInsets.zero,
              onPressed: (){},
              child: const Text('No Padding'),
            ),

          ],
        ),
      ),
    );
  }
}
