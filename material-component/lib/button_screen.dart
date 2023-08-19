import 'package:common/theme/app_colors.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppBarWithInfoAction(
      title: "Button",
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            //---------------------- ElevatedButton Example---------------------------
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(colors(context).black)
                ),
                child: const Text("Elevated Button"),

              ),
            ),


            //---------------------- FilledButton Example---------------------------
            const SizedBox(height: 16,),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: (){},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                  ),
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
                ),
                child: const Text("Filled Button"),
              ),
            ),


            //---------------------- OutlinedButton Example---------------------------
            const SizedBox(height: 16,),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: (){},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(color: Theme.of(context).colorScheme.primary))
                ),
                child: const Text("Outlined Button"),
              ),
            ),


            //---------------------- FilledButton Example---------------------------
            const SizedBox(height: 16,),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: (){},
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(width: 8,),
                    Text("Button With Icon")
                  ],
                ),
              ),
            ),


            //---------------------- FilledButton Example---------------------------
            const SizedBox(height: 16,),
            FilledButton(
              onPressed: (){},
              style: FilledButton.styleFrom(
                shape: const CircleBorder(),
                fixedSize: const Size(150, 100)
              ),
              child: const Text("Circle Button")
            ),


            //---------------------- TextButton Example---------------------------
            const SizedBox(height: 16,),
            TextButton(onPressed: (){}, child: const Text("Text Button")),


            //---------------------- IconButton Example---------------------------
            const SizedBox(height: 16,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,color: Colors.red,))


          ],
        ),
      ),
    );
  }
}
