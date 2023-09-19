import 'package:common/theme/app_colors.dart';
import 'package:common/theme/app_typography.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return ScaffoldAppBarWithInfoAction(
      title: "Search Bar",

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [


              //------------------full screen search bar------------------------------
              SearchAnchor(
                dividerColor: purple40,
                viewHintText: "Search ...",
                isFullScreen: true,
                builder: (context, controller){
                  return SearchBar(
                    elevation: MaterialStateProperty.all(0.2),
                    hintText: "Full Screen Search",
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0)),
                    controller: controller,
                    onChanged: (value){
                      if(!controller.isOpen){
                        controller.openView();
                      }
                    },
                    leading: const Icon(Icons.search),
                    onTap: (){
                      controller.openView();
                    },
                  );
                },
                suggestionsBuilder: (BuildContext context, SearchController controller) {
                  if (controller.text.isEmpty){
                    return List<ListTile>.generate(_countryList.length, (index){
                      return ListTile(
                        leading: Text(_countryList[index].flag,style: AppTypography.typography.headlineLarge,),
                        title: Text(_countryList[index].name),
                        onTap: (){
                          controller.closeView(_countryList[index].name);
                        },
                      );
                    });
                  }else{
                    final filterCountryList = _countryList.where((element) => element.name.contains(controller.text));
                    return List<ListTile>.generate(filterCountryList.length, (index){
                      return ListTile(
                        leading: Text(filterCountryList.elementAt(index).flag,style: AppTypography.typography.headlineLarge,),
                        title: Text(filterCountryList.elementAt(index).name),
                        onTap: (){
                          controller.closeView(filterCountryList.elementAt(index).name);
                        },
                      );
                    });
                  }

                },
              ),



              //------------------compact search bar------------------------------
              const Height(height: 20),
              SearchAnchor(
                dividerColor: purple40,
                viewHintText: "Search ...",
                isFullScreen: false,
                builder: (context, controller){
                  return SearchBar(
                    elevation: MaterialStateProperty.all(0.2),
                    hintText: "Compact Screen Search",
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0)),
                    controller: controller,
                    onChanged: (value){
                      if(!controller.isOpen){
                        controller.openView();
                      }
                    },
                    leading: const Icon(Icons.search),
                    onTap: (){
                      controller.openView();
                    },
                  );
                },
                suggestionsBuilder: (BuildContext context, SearchController controller) {
                  if (controller.text.isEmpty){
                    return List<ListTile>.generate(_countryList.length, (index){
                      return ListTile(
                        leading: Text(_countryList[index].flag,style: AppTypography.typography.headlineLarge,),
                        title: Text(_countryList[index].name),
                        onTap: (){
                          controller.closeView(_countryList[index].name);
                        },
                      );
                    });
                  }else{
                    final filterCountryList = _countryList.where((element) => element.name.contains(controller.text));
                    return List<ListTile>.generate(filterCountryList.length, (index){
                      return ListTile(
                        leading: Text(filterCountryList.elementAt(index).flag,style: AppTypography.typography.headlineLarge,),
                        title: Text(filterCountryList.elementAt(index).name),
                        onTap: (){
                          controller.closeView(filterCountryList.elementAt(index).name);
                        },
                      );
                    });
                  }

                },
              ),



            ],
          ),
        ),
      )
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
];

class _Country{
  String name;
  String flag;
  _Country({required this.name, required this.flag});
}
