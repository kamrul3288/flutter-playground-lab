import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});
  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  final textFiledController2 = TextEditingController();
  final textFiledController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Dialog",

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              FilledButton(
                onPressed: (){
                  _showAlertDialog(context);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                    ),
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
                ),
                child: const Text("AlertDialog"),
              ),


              FilledButton(
                onPressed: (){
                  _showViewAlertDialog(context);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                    ),
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
                ),
                child: const Text("View AlertDialog"),
              ),


              FilledButton(
                onPressed: (){
                  _showFullScreenDialog(context);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                    ),
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
                ),
                child: const Text("Full Screen Dialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }


  //------------------- Basic Alert Dialog Example----------------------------------
  void _showAlertDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog.adaptive(
          icon: const Icon(Icons.info_outline),
          title: const Text("What is Lorem Ipsum?"),
          content: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy"),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel",style: TextStyle(color: red),)
            ),
            TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text("Confirm",style: TextStyle(color: purple40))
            ),


          ],
        );
      }
    );
  }


  //------------------- View Alert Dialog Example----------------------------------
  void _showViewAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog.adaptive(
            icon: const Icon(Icons.info_outline),
            title: const Text("What is Lorem Ipsum?"),
            content: Material(
              color: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const Height(height: 16),
                  TextFormField(
                    controller: textFiledController2,
                    decoration:   InputDecoration(
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                      ),
                      label: const Text("Enter your email"),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),


                  //---------------------Password text field example--------------------
                  const Height(height: 8),
                  TextFormField(
                    controller: textFiledController3,
                    decoration:   InputDecoration(
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                      ),
                      label: const Text("Enter your password"),
                      prefixIcon: Icon(Icons.lock_outline_rounded, color: Theme.of(context).colorScheme.primary,),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),


                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel", style: TextStyle(color: red),)
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                      "Confirm", style: TextStyle(color: purple40))
              ),


            ],
          );
        }
    );
  }


  //------------------- Full Screen Alert Dialog Example----------------------------------
  void _showFullScreenDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog.fullscreen(
            child: Material(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close),
                        ),
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.check),
                        ),
                      ],
                    ),

                    const Height(height: 16),
                    TextFormField(
                      controller: textFiledController2,
                      decoration:   InputDecoration(
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                        ),
                        label: const Text("Enter your email"),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),


                    //---------------------Password text field example--------------------
                    const Height(height: 8),
                    TextFormField(
                      controller: textFiledController3,
                      decoration:   InputDecoration(
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                        ),
                        label: const Text("Enter your password"),
                        prefixIcon: Icon(Icons.lock_outline_rounded, color: Theme.of(context).colorScheme.primary,),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),

                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
