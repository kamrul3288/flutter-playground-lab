import 'package:async_programming/future/future_screen.dart';
import 'package:common/common.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class AsyncHomeScreen extends StatelessWidget {
  const AsyncHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Async Programming",

      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [

            //-------------Row 1-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 100,
                    title: "Future",
                    icon: FontAwesomeIcons.oldRepublic,
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FutureScreen()));
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "Stream",
                  icon: FontAwesomeIcons.waveSquare,
                  onTap: (){

                  },
                ),
              ],
            ),

            //-------------Row 2-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 100,
                    title: "Stream Controller",
                    icon: FontAwesomeIcons.waveSquare,
                    onTap: (){

                    }
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
