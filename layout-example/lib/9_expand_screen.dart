
import 'package:common/theme/app_colors.dart';
import 'package:flutter/material.dart';


class ExpandScreen extends StatelessWidget {
  const ExpandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Expand Widget"),
        centerTitle: true,
      ),
      backgroundColor: colors(context).white,

      body: Column(
        children: [

          Expanded(
            flex: 50,
            child: Row(
              children: [

                Expanded(
                  flex: 25,
                  child: Container(
                    color: pink40,
                    child: const Center(
                      child: Text("Row Expand 25%"),
                    ),
                  ),
                ),

                Expanded(
                  flex: 35,
                  child: Container(
                    color: pink80,
                    child: const Center(
                      child: Text("Row Expand 35%"),
                    ),
                  ),
                ),


                Expanded(
                  flex: 40,
                  child: Container(
                    color: red,
                    child: const Center(
                      child: Text("Row Expand 40%"),
                    ),
                  ),
                ),


              ],
            ),
          ),


          Expanded(
            flex: 35,
            child: Container(
              color: purple40,
              child: const Center(
                child: Text("Column Expand 35%"),
              ),
            )
          ),


          Expanded(
            flex: 15,
            child: Container(
              color: purple80,
              child: const Center(
                child: Text("Column Expand 15%"),
              ),

            ),
          ),

        ],
      ),


    );
  }
}
