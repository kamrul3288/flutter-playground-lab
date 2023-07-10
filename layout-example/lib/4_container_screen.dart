import 'package:common/theme/app_colors.dart';
import 'package:flutter/material.dart';


class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        centerTitle: true,
      ),
      backgroundColor: ThemeColors.White,
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 16,),
            Container(
              color: purple80,
              child: const Text("Simple Child Container"),
            ),


            const SizedBox(height: 16,),
            Container(
              color: purple40,
              padding: const EdgeInsets.all(8),
              child: const Text("Simple Child Container", style: TextStyle(color: white),),
            ),

            const SizedBox(height: 16,),
            Container(
              decoration: const BoxDecoration(shape: BoxShape.circle, color: purple80),
              width: 100,
              height: 100,
              child: const Center(child: Text("Container Shape",textAlign: TextAlign.center,)),
            ),


            const SizedBox(height: 16,),
            Container(
              width: double.infinity,
              height: 150,
              color: pink80,
              transform: Matrix4.rotationZ(0.10),
              child: const Center(child: Text("Container Rotation",textAlign: TextAlign.center,)),
            ),


          ],
        ),
      ),

    );
  }
}
