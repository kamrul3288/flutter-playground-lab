import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "Icon",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.favorite),

            const SizedBox(height: 24,),
            const Icon(Icons.favorite, color: Colors.red,),

            const SizedBox(height: 24,),
            const Icon(Icons.favorite, color: Colors.red,size: 100,),

            const SizedBox(height: 24,),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red
              ),
              child: const Center(
                child: Icon(Icons.favorite, color: Colors.white,size: 70,),
              ),
            )


          ],
        ),
      ),
    );
  }
}
