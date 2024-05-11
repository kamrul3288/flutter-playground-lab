import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/theme/app_typography.dart';
import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class PopupMenuScreen extends StatefulWidget {
  const PopupMenuScreen({super.key});

  @override
  State<PopupMenuScreen> createState() => _PopupMenuScreenState();
}

class _PopupMenuScreenState extends State<PopupMenuScreen> {
  
  final countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Popup Menu",
      actions: [
        PopupMenuButton<_MenuItem>(
          onSelected: (item){

          },
          itemBuilder: (context)=>[
            ..._menuItems.map(popupMenuItem).toList()
          ],
          icon: const Icon(Icons.more_vert_rounded),
          offset: const Offset(0,35),
        )
      ],


      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              //---------Dropdown menu example-----------------
              const Height(height: 32),
              LayoutBuilder(
                builder: (context, constraint){
                  return DropdownMenu(
                    menuHeight: 300,
                    width: constraint.maxWidth,
                    initialSelection: _countryList[0],
                    controller: countryController,
                    label: const Text("Country"),
                    dropdownMenuEntries: [
                      ..._countryList.map(dropdownMenuItem).toList()
                    ],
                    inputDecorationTheme: InputDecorationTheme(
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                      ),
                    ),
                  );
                },
              ),


              const Height(height: 32),
              SizedBox(
                height: 60,
                child: DropdownButton(
                  isExpanded: true,
                  menuMaxHeight: 300,
                  elevation: 16,
                  icon: const Icon(Icons.arrow_drop_down),
                  underline: Container(
                    height: 2,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  style: AppTypography.typography.headlineLarge,
                  value: _countryList[0],
                  items: [
                    ..._countryList.map(dropdownButtonItem).toList()
                  ],
                  onChanged: (value){

                  },
                ),
              ),


              const Height(height: 32),
              LayoutBuilder(
                builder: (context,constraint){
                  return PopupMenuButton<_MenuItem>(
                    initialValue: _menuItems[0],
                    constraints: BoxConstraints.expand(width: constraint.maxWidth,height: constraint.maxHeight),
                    padding: EdgeInsets.zero,
                    onSelected: (item){

                    },
                    itemBuilder: (context)=>[
                      ..._menuItems.map(popupMenuItem).toList()
                    ],
                    icon: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child:  Center(child: Text("Show Popup Menu",style: AppTypography.typography.labelLarge?.copyWith(color: white),)),
                    ),
                  );
                },
              )

            ],
          ),
        ),
      ),

    );
  }


  DropdownMenuItem<_Country> dropdownButtonItem(_Country country){
    return DropdownMenuItem(
      value: country,
      child: ListTile(
        leading: Text(country.flag,style: AppTypography.typography.headlineLarge,),
        title: Text(country.name,style: AppTypography.typography.titleSmall,),
      )
    );
  }

  PopupMenuItem<_MenuItem> popupMenuItem(_MenuItem item){
    return PopupMenuItem(
      child: Row(
        children: [
          Icon(item.icon,color: colors(context).black,),
          const Width(width: 8),
          Text(item.title,style: AppTypography.typography.titleSmall,)
        ],
      ),
    );
  }

  DropdownMenuEntry<_Country> dropdownMenuItem(_Country country){
    return DropdownMenuEntry(
      value: country,
      leadingIcon: Text(country.flag,style: AppTypography.typography.headlineLarge,),
      label: country.name,
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(AppTypography.typography.titleSmall)
      )
    );
  }

}


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


final _menuItems = [
  const _MenuItem(title: "Dashboard", icon: Icons.dashboard),
  const _MenuItem(title: "Cart", icon: Icons.shopping_cart),
  const _MenuItem(title: "Settings", icon: Icons.settings),
  const _MenuItem(title: "Profile", icon: Icons.account_circle_outlined),
  const _MenuItem(title: "Logout", icon: Icons.logout),
];

class _MenuItem{
  final String title;
  final IconData icon;

  const _MenuItem({
    required this.title,
    required this.icon
  });
}