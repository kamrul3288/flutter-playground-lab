import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class ToolTipsScreen extends StatelessWidget {
  const ToolTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   ScaffoldInfoActionAppBar(
      title: "Tool Tips",

      body: Center(
        child: Tooltip(
          message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          margin: const EdgeInsets.symmetric(horizontal: 16),
          showDuration: const Duration(seconds: 5),
          textStyle: const TextStyle(color: white),
          preferBelow: false,
          verticalOffset: 20,
          decoration: ShapeDecoration(
              shape: const ToolTipCustomShareDecoration(),
              color: Theme.of(context).primaryColor
          ),
          child: const Icon(
            Icons.info,
            size: 30,
          ),
        ),
      ),
    );
  }
}

class ToolTipCustomShareDecoration extends ShapeBorder{
  final bool isPaddingRequired;
  const ToolTipCustomShareDecoration({this.isPaddingRequired = true});

  @override
  EdgeInsetsGeometry get dimensions =>EdgeInsets.only(bottom: isPaddingRequired ? 20 : 0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 20));
    return Path()
        ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 3)))
        ..moveTo(rect.bottomCenter.dx - 10, rect.bottomCenter.dy)
        ..relativeLineTo(10, 20)
        ..relativeLineTo(10, -20)
        ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
  
}