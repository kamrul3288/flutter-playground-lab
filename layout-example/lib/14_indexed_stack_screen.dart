
import 'package:flutter/material.dart';
import 'package:common/theme/app_colors.dart';
import 'package:common/widget/scaffold_appbar.dart';

class IndexedStackScreen extends StatefulWidget {
  const IndexedStackScreen({super.key});
  @override
  State<IndexedStackScreen> createState() => _IndexedStackScreenState();
}

class _IndexedStackScreenState extends State<IndexedStackScreen> {
  var widgetIndex = 0;

  void _changeWidgetIndex(int index){
    setState(() {
      widgetIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  ScaffoldAppBarWithInfoAction(
      title: "IndexedStack",
      widgetDescription: "IndexedStack is a subclass of Stack. You can determine which child widget to be shown through the index property. Assuming the index is null, child widgets will be shown. To use IndexedStack, we can simply wrap the list of widgets inside the IndexedStack widget.",

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: widgetIndex,
                children: const [

                  Center(
                    child: CircularProgressIndicator(),
                  ),

                  Center(
                    child: Text("Data Fetch Successful"),
                  ),

                  Center(
                    child: Text("Opps! No Internet Connection"),
                  )

                ],
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    _changeWidgetIndex(0);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
                    foregroundColor: const MaterialStatePropertyAll(white)
                  ),
                    child: const Text("Loading"),
                ),

                ElevatedButton(
                  onPressed: (){
                    _changeWidgetIndex(1);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
                      foregroundColor: const MaterialStatePropertyAll(white)
                  ),
                  child: const Text("Success"),
                ),


                ElevatedButton(
                  onPressed: (){
                    _changeWidgetIndex(2);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
                      foregroundColor: const MaterialStatePropertyAll(white)
                  ),
                  child: const Text("Error"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
