import 'package:common/extension/dialog_extension.dart';
import 'package:flutter/material.dart';

//-------------Scaffold appbar with info action bar-------------------
class ScaffoldInfoActionAppBar extends StatelessWidget {
  final Widget? body;
  final Color? backgroundColor;
  final String title;
  final String? widgetDescription;

  const ScaffoldInfoActionAppBar({
    super.key,
    this.body,
    this.backgroundColor,
    required this.title,
    this.widgetDescription
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
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

//-------------------Scaffold appbar with nav drawer ------------
class ScaffoldDrawerAppbar extends StatelessWidget {
  final Widget? body;
  final Color? backgroundColor;
  final Widget? title;
  final Widget drawer;
  const ScaffoldDrawerAppbar({
    super.key,
    this.body,
    this.backgroundColor,
    this.title,
    required this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: title,
      ),
      drawer: drawer,
      body: body,
    );
  }
}
