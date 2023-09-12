import 'package:common/theme/app_colors.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double sliderValue = 0;
  double sliderValue1 = 0;
  double sliderValue2 = 0;



  @override
  Widget build(BuildContext context) {
    return  ScaffoldAppBarWithInfoAction(
      title: "Slider",

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Width(width: double.infinity),

            Slider(
                value: sliderValue,
                inactiveColor: purple40.withOpacity(0.3),
                activeColor: purple40,
                onChanged: (newValue){
                  setState(() {
                    sliderValue = newValue;
                  });
                }
            ),

            Slider(
                max: 100,
                value: sliderValue1,
                inactiveColor: purple40.withOpacity(0.3),
                activeColor: purple40,
                label: sliderValue1.toString(),
                divisions: 5,
                onChanged: (newValue){
                  setState(() {
                    sliderValue1 = newValue;
                  });
                }
            ),


            SliderTheme(
                data: const SliderThemeData(
                  showValueIndicator: ShowValueIndicator.never,
                  thumbShape: _ThumbShape(),
                ),
                child: Slider(
                    max: 100,
                    value: sliderValue2,
                    inactiveColor: purple40.withOpacity(0.3),
                    activeColor: purple40,
                    label: sliderValue1.round().toString(),
                    onChanged: (newValue){
                      setState(() {
                        sliderValue2 = newValue;
                      });
                    }
                ),
            ),
          ],
        ),
      ),
    );
  }
}


class _ThumbShape extends RoundSliderThumbShape {
  final _indicatorShape = const PaddleSliderValueIndicatorShape();

  const _ThumbShape();
  @override
  void paint(
      PaintingContext context,
      Offset center,{
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow
      })
  {
    super.paint(
        context,
        center,
        activationAnimation: activationAnimation,
        enableAnimation: enableAnimation,
        isDiscrete: isDiscrete,
        labelPainter: labelPainter,
        parentBox: parentBox,
        sliderTheme: sliderTheme,
        textDirection: textDirection,
        value: value,
        textScaleFactor:
        textScaleFactor,
        sizeWithOverflow: sizeWithOverflow
    );
    _indicatorShape.paint(
        context, center,
        activationAnimation: const AlwaysStoppedAnimation(0.8),
        enableAnimation: enableAnimation,
        isDiscrete: isDiscrete,
        labelPainter: labelPainter,
        parentBox: parentBox,
        sliderTheme: sliderTheme,
        textDirection: textDirection,
        value: value,
        textScaleFactor: textScaleFactor,
        sizeWithOverflow: sizeWithOverflow
    );
  }
}
