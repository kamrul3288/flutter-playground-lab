
import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/theme/app_typography.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';
import 'package:dep_management/read_more.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Text",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //--------------------- DefaultTextStyle Widget---------------------------------------------
            Text("Default Text Style Widget:",style: AppTypography.typography.labelLarge,),
            const SizedBox(height: 8,),
            DefaultTextStyle.merge(
              style: AppTypography.typography.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("This is Default Text Style Value"),
                  Text("This is Default Text Style of bold font")
                ],
              )
            ),


            //--------------------- RichText Widget---------------------------------------------
            const SizedBox(height: 32,),
            Text("Rich Text Widget:",style: AppTypography.typography.labelLarge,),
            const SizedBox(height: 8,),
            RichText(
              text: TextSpan(
                text: 'Hello ',
                children:  <TextSpan>[
                  TextSpan(text: 'bold', style: AppTypography.typography.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                  const TextSpan(text: ' world!'),
                ],
                style: TextStyle(color: colors(context).black)
              ),
            ),


            //--------------------- More Widget---------------------------------------------
            const SizedBox(height: 32,),
            Text("Ellipsis:",style: AppTypography.typography.labelLarge,),
            const SizedBox(height: 8,),
            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 16,),
            const ReadMoreText(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Read less',
              moreStyle: TextStyle(color: Colors.blue),
              lessStyle: TextStyle(color: Colors.red),
            ),



            //------------------ Text Shape---------------------
            const SizedBox(height: 16,),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Text("Text With Background Shape",style: AppTypography.typography.labelLarge?.copyWith(color: white),),
            )


          ],
        ),
      ),
    );
  }
}
