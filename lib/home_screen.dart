import 'package:cupertino_component/main_cupertino_screen.dart';
import 'package:flutter/material.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:layout_example/layout_main_screen.dart';
import 'package:material_component/material_component_main.dart';
import 'package:ui/widget/component_button.dart';
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
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const LayoutMainScreen())
                      );
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "Material Component",
                  icon: FontAwesomeIcons.squarespace,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                    );
                  },
                ),
              ],
            ),

            //-------------Row 2-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 100,
                    title: "Cupertino Component",
                    icon: FontAwesomeIcons.appStoreIos,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const MainCupertinoScreen())
                      );
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "Navigation",
                  icon: FontAwesomeIcons.squarespace,
                  onTap: (){

                  },
                ),
              ],
            ),

            //-------------Row 3-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 100,
                    title: "Bloc StateManagement",
                    icon: FontAwesomeIcons.manatSign,
                    onTap: (){}
                ),
                ComponentButton(
                  flex: 100,
                  title: "Riverpod StateManagement",
                  icon: FontAwesomeIcons.squarespace,
                  onTap: (){

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
