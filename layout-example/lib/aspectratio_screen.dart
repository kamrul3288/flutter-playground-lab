import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "Aspect Ratio",
      widgetDescription: ""
          "The aspect ratio of 16:9 indicates the proportional relationship between the width and height of a widget. It means that the width of the widget should be 16 times the height."
          "\n\nTo clarify, let's consider an example:"
          "\n\nIf the height of the widget is 100 pixels, then the width would be calculated as follows:Width = aspect ratio * height"
          "\n\nWidth = 16/9 * 100"
          "\n\nWidth ≈ 177.78 pixels"
          "\n\nConversely, if you have the width of the widget and want to calculate the corresponding height, you can use the following formula:"
          "\n\nHeight = width / aspect ratio"
          "\n\nHeight = 177.78 / 16/9"
          "\n\nHeight ≈ 100 pixels",

      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [


            /*
            *The aspect ratio of 16:9 indicates the proportional relationship between the width and height of a widget. It means that the width of the widget should be 16 times the height.
            * To clarify, let's consider an example:
            * If the height of the widget is 100 pixels, then the width would be calculated as follows:Width = aspect ratio * height
              Width = 16/9 * 100
              Width ≈ 177.78 pixels

              Conversely, if you have the width of the widget and want to calculate the corresponding height, you can use the following formula:

              Height = width / aspect ratio
              Height = 177.78 / 16/9
              Height ≈ 100 pixels
            **/
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
              width: double.infinity,
              height: 100,
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),



            //An aspect ratio of 2.0 can be represented as a ratio of 2:1, indicating that the width is twice as long as the height.
            /*
              Width = aspect ratio * height
              Width = 2/1  * 100
              Width = 200 pixels

              Similarly, if you have the width and want to calculate the height:

              Height = width / aspect ratio
              Height = 200 / 2.0
              Height = 100 pixels
            **/
            const SizedBox(height: 32,),
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
              width: 100,
              height: 100,
              child: AspectRatio(
                aspectRatio: 2.0,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),


            //An aspect ratio of 0.5 means that the width of the widget or display is half the height.
            /*
              For example, if the height of a widget or display is 100 pixels, the corresponding width would be:

              Width = aspect ratio * height
              Width = 0.5 * 100
              Width = 50 pixels

              Conversely, if you have the width and want to calculate the height:

              Height = width / aspect ratio
              Height = 50 / 0.5
              Height = 100 pixels
            **/
            const SizedBox(height: 32,),
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
              width: 100,
              height: 100,
              child: AspectRatio(
                aspectRatio: 0.5,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      )



    );
  }

}
