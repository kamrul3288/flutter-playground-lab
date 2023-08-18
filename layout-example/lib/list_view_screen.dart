import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';


class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScaffoldAppBarWithInfoAction(
      title: "ListView",
      widgetDescription: "A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. ",
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 30,
        itemBuilder: (context,index){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("List Item $index"),
              ),
              const Divider()
            ],
          );
        },
      ),
    );
  }
}
