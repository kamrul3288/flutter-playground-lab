import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCupertinoScreen extends StatelessWidget {
  const MenuCupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Menu",

      body: Center(
        child: CupertinoContextMenu(
            actions: [
              CupertinoContextMenuAction(
                isDefaultAction: true,
                onPressed: (){
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.share,
                child: const Text("Share"),
              ),


              CupertinoContextMenuAction(
                onPressed: (){
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: const Text("Copy"),
              ),


              CupertinoContextMenuAction(
                onPressed: (){
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.heart,
                child: const Text("Favourite"),
              ),


              CupertinoContextMenuAction(
                onPressed: (){
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.delete,
                isDestructiveAction: true,
                child: const Text("Delete"),
              )

            ],
            child: const FlutterLogo(size: 100.0)
        ),
      )
    );
  }
}
