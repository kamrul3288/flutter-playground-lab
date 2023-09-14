import 'package:common/theme/app_colors.dart';
import 'package:common/theme/app_typography.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:flutter/material.dart';


class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});
  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {



  //---------------------Showing Modal Bottom Sheet-------------------------
  _showModalBottomSheet(){
    showModalBottomSheet(
        context: context,
        showDragHandle: true,
        builder: (context){
          return ListView.builder(
            itemCount: _countryList.length,
            itemBuilder: (context,index){
              return ListTile(
                leading: Text(_countryList[index].flag,style: AppTypography.typography.headlineLarge,),
                title: Text(_countryList[index].name),
              );
            },
          );
        }
    );
  }


  //---------------------Showing Draggable Modal Bottom Sheet-------------------------
  _showDraggableModalBottomSheet(){
    showModalBottomSheet(
        context: context,
        showDragHandle: true,
        isScrollControlled: true,
        builder: (context)=> DraggableScrollableSheet(
          maxChildSize: 0.9,
          minChildSize: 0.3,
          expand: false,
          builder: (context,scrollController){
            return ListView.builder(
              controller: scrollController,
              itemCount: _countryList.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: Text(_countryList[index].flag,style: AppTypography.typography.headlineLarge,),
                  title: Text(_countryList[index].name),
                );
              },
            );
          },
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      backgroundColor: colors(context).white?.withOpacity(0.9),


      //-------------------Persistence Bottom Sheet Example------------------
      bottomSheet: DraggableScrollableSheet(
        maxChildSize: 1,
        minChildSize: 0.1,
        expand: false,
        initialChildSize: 0.1,
        builder: (context,controller){
          return SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                const Height(height: 32),
                Container(
                  width: 50,
                  height: 6,
                  decoration: BoxDecoration(
                    color: purple40,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                const Height(height: 32),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _countryList.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Text(_countryList[index].flag,style: AppTypography.typography.headlineLarge,),
                      title: Text(_countryList[index].name),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),



      //---------------- Screen Body Here-------------------------
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            FilledButton(
                onPressed: (){
                  _showModalBottomSheet();
                },
                child: const Text("Show Modal Bottom Sheet")
            ),

            FilledButton(
                onPressed: (){
                  _showDraggableModalBottomSheet();
                },
                child: const Text("Show Draggable Bottom Sheet")
            ),


          ],
        ),
      ),
    );
  }
}


//----------------------Prepare data--------------------------------
final _countryList = [
  _Country(name: "United States", flag: "\uD83C\uDDFA\uD83C\uDDF8"),
  _Country(name: "Canada", flag: "\uD83C\uDDE8\uD83C\uDDE6"),
  _Country(name: "India", flag: "\uD83C\uDDEE\uD83C\uDDF3"),
  _Country(name: "Germany", flag: "\uD83C\uDDE9\uD83C\uDDEA"),
  _Country(name: "France", flag: "\uD83C\uDDEB\uD83C\uDDF7"),
  _Country(name: "Japan", flag: "\uD83C\uDDEF\uD83C\uDDF5"),
  _Country(name: "China", flag: "\uD83C\uDDE8\uD83C\uDDF3"),
  _Country(name: "Brazil", flag: "\uD83C\uDDE7\uD83C\uDDF7"),
  _Country(name: "Australia", flag: "\uD83C\uDDE6\uD83C\uDDFA"),
  _Country(name: "Russia", flag: "\uD83C\uDDF7\uD83C\uDDFA"),
  _Country(name: "United Kingdom", flag: "\uD83C\uDDEC\uD83C\uDDE7"),
  _Country(name: "United States", flag: "\uD83C\uDDFA\uD83C\uDDF8"),
  _Country(name: "Canada", flag: "\uD83C\uDDE8\uD83C\uDDE6"),
  _Country(name: "India", flag: "\uD83C\uDDEE\uD83C\uDDF3"),
  _Country(name: "Germany", flag: "\uD83C\uDDE9\uD83C\uDDEA"),
  _Country(name: "France", flag: "\uD83C\uDDEB\uD83C\uDDF7"),
  _Country(name: "Japan", flag: "\uD83C\uDDEF\uD83C\uDDF5"),
  _Country(name: "China", flag: "\uD83C\uDDE8\uD83C\uDDF3"),
  _Country(name: "Brazil", flag: "\uD83C\uDDE7\uD83C\uDDF7"),
  _Country(name: "Australia", flag: "\uD83C\uDDE6\uD83C\uDDFA"),
  _Country(name: "Russia", flag: "\uD83C\uDDF7\uD83C\uDDFA"),
  _Country(name: "United Kingdom", flag: "\uD83C\uDDEC\uD83C\uDDE7"),
];

class _Country{
  String name;
  String flag;
  _Country({required this.name, required this.flag});
}
