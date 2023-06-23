import 'package:common/widget/component_button.dart';
import 'package:flutter/material.dart';
import 'package:dep_management/font_awesome_flutter.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Playground"),
          centerTitle: true,
        ),

      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [

            //-------------Row 1-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 100,
                    title: "Layouts",
                    icon: FontAwesomeIcons.table,
                    onTap: (){

                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "Material Component",
                  icon: FontAwesomeIcons.squarespace,
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
                    title: "Animations",
                    icon: FontAwesomeIcons.table,
                    onTap: (){

                    }
                ),
                ComponentButton(
                  flex: 80,
                  title: "Navigation",
                  icon: FontAwesomeIcons.squarespace,
                  onTap: (){

                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
