import 'package:common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
        centerTitle: true,
      ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Text("Kamrul Hasan", style: Theme.of(context).textTheme.titleMedium,),
          const Text("Mobile application developer"),

          const SizedBox(height: 20,),
          Text("Colum Example: Alignment Center", style: Theme.of(context).textTheme.labelSmall,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Kamrul Hasan", style: Theme.of(context).textTheme.titleMedium,),
              const Text("Mobile application developer"),
            ],
          ),


          const SizedBox(height: 20,),
          Text("Colum Example: Alignment End", style: Theme.of(context).textTheme.labelSmall,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Kamrul Hasan", style: Theme.of(context).textTheme.titleMedium,),
              const Text("Mobile application developer"),
            ],
          ),

          const SizedBox(height: 20,),
          Text("Colum Example: Horizontal and Vertical Alignment", style: Theme.of(context).textTheme.labelSmall),
          Container(
            color: Theme.of(context).cardColor,
            width: double.infinity,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Kamrul Hasan", style: Theme.of(context).textTheme.titleMedium,),
                const Text("Mobile application developer"),
              ],
            ),
          ),


          Expanded(
            flex: 40,
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text("Weight Distribute: 40%"),
              ),
            ),
          ),

          Expanded(
            flex: 60,
            child: Container(
              color: Colors.blue.shade300,
              child: const Center(
                child: Text("Weight Distribute: 60%"),
              ),
            ),
          )


        ],
      ),

    );
  }
}
