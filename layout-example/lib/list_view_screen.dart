import 'package:design_system/theme/app_typography.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';


class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "ListView",
      widgetDescription: "A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. ",
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context,index){
          return ListTile(
            title: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://mediaim.expedia.com/destination/1/ababbd52d238b29e1b8e792873eb4fe2.jpg",
                fit: BoxFit.fill,
              ),
            ),
            subtitle:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Dubai: Marina Yacht Cruise with Breakfast, Lunch, or Dinner",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.typography.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          );
        },
      ),
    );
  }
}
