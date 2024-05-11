import 'dart:math';

import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';


enum _GridViewType{gridCount, sliverGrid, gridBuilder}


class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});
  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {

  var gridViewType = _GridViewType.gridCount;

  List<Color> getGeneratedColors(){
    return  [
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
      Color(Random().nextInt(0xffffffff)),
    ];
  }

  void _changeGridViewType(_GridViewType type){
    setState(() {
      gridViewType = type;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  ScaffoldInfoActionAppBar(
      title: "Grid View",
      widgetDescription: "GridView is a widget in Flutter that displays the items in a 2-D array (two-dimensional rows and columns). As the name suggests, it will be used when we want to show items in a Grid. We can select the desired item from the grid list by tapping on them.",
      body: SafeArea(

        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      _changeGridViewType(_GridViewType.gridCount);
                    },
                    style: ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Theme.of(context).primaryColor),
                      foregroundColor: const MaterialStatePropertyAll(white)
                    ),
                    child: const Text("Grid Count"),
                  ),

                  TextButton(
                    onPressed: (){
                      _changeGridViewType(_GridViewType.sliverGrid);
                    },
                    style: ButtonStyle(
                        backgroundColor:MaterialStatePropertyAll(Theme.of(context).primaryColor),
                        foregroundColor: const MaterialStatePropertyAll(white)
                    ),
                    child: const Text("Sliver Grid"),
                  ),

                  TextButton(
                    onPressed: (){
                      _changeGridViewType(_GridViewType.gridBuilder);
                    },
                    style: ButtonStyle(
                        backgroundColor:MaterialStatePropertyAll(Theme.of(context).primaryColor),
                        foregroundColor: const MaterialStatePropertyAll(white)
                    ),
                    child: const Text("Grid Builder"),
                  ),
                ],
              ),
            ),

            if(gridViewType == _GridViewType.gridCount)...[
              //------------GRID VIEW WITH GRID COUNT---------------
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: getGeneratedColors().map<Widget>((Color color) =>
                      Container(
                        color: color,
                        child: const Center(
                            child: Text("Count Item")
                        ),
                      )
                  ).toList(),
                ),
              )
            ]

            //------------GRID VIEW WITH SLIVER GRID---------------
            else if (gridViewType == _GridViewType.sliverGrid)...[
              Expanded(
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      sliver: SliverGrid.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        children: getGeneratedColors().map<Widget>((Color color) =>
                            Container(
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Center(
                                  child: Text("Sliver Item")
                              ),
                            )
                        ).toList(),
                      ),
                    )
                  ],
                ),
              )
            ]


            //------------GRID VIEW WITH  GRID Builder---------------
            else...[
              Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                    ),
                    itemCount: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (context, index){
                      return  Container(
                        decoration: BoxDecoration(
                            color: Color(Random().nextInt(0xffffffff)),
                            shape: BoxShape.circle
                        ),
                        child: const Center(
                            child: Text("Builder Item")
                        ),
                      );
                    }
                ),
              )
            ]



          ],
        ),
      ),
    );
  }
}
