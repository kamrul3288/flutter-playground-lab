import 'package:common/widget/component_button.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:layout_example/stack_screen.dart';

class LayoutMainScreen extends StatelessWidget {
  const LayoutMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layouts"),
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
                    flex: 80,
                    title: "Stack",
                    icon: FontAwesomeIcons.boxesStacked,
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const StackScreen())
                      );
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "Column",
                  icon: FontAwesomeIcons.tableColumns,
                  onTap: (){

                  },
                ),

                ComponentButton(
                  flex: 80,
                  title: "Row",
                  icon: FontAwesomeIcons.tableColumns,
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
