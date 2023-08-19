import 'package:common/extension/dialog_extension.dart';
import 'package:flutter/material.dart';

class ScaffoldAppBarWithInfoAction extends StatelessWidget {
  final Widget? body;
  final Color? backgroundColor;
  final String title;
  final String? widgetDescription;

  const ScaffoldAppBarWithInfoAction({
    super.key,
    this.body,
    this.backgroundColor,
    required this.title,
    this.widgetDescription
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Text(title),
        centerTitle: true,

        actions: [
          IconButton(
              onPressed: (){
                context.positiveButtonDialog(
                    widgetDescription ?? "No Description provided"
                );
              },
              icon: const Icon(Icons.info_outline)
          )
        ],
      ),
      backgroundColor: backgroundColor,

      body: body,
    );
  }
}
