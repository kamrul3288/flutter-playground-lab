import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stacks"),
        centerTitle: true,
      ),


      body:   SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          fit: StackFit.expand,
          children: [

            Positioned(
              width: 100,
              height: 100,
              child: Container(color: Colors.red,),
            ),

            Positioned(
              width: 80,
              height: 80,
              child: Container(color: Colors.blue,),
            ),

            Positioned(
              width: 60,
              height: 60,
              child: Container(color: Colors.amber,),
            ),

            const Positioned(
              right: 0,
              child: Text("End Position Text"),
            ),

            const Positioned(
              bottom: 0,
              left: 0,
              child: Text("Bottom Start Position Text"),
            ),


           Align(
             alignment: Alignment.center,
             child: Stack(
               children: [
                 Container(
                   width: 100,
                   height: 100,
                   decoration:  BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.red.shade200
                   ),
                 ),

                 Positioned(
                   bottom: 0,
                   right: 0,
                   child: Container(
                     width: 30,
                     height: 30,
                     decoration:  BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.red.shade100
                     ),
                     child: const Center(
                       child: FaIcon(FontAwesomeIcons.pen,size: 15,),
                     ),
                   ),
                 )
               ],
             ),
           )


          ],
        ),
      ),

    );
  }
}
