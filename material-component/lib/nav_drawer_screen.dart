import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/theme/app_typography.dart';
import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class NavDrawerScreen extends StatefulWidget {
  const NavDrawerScreen({super.key});
  @override
  State<NavDrawerScreen> createState() => _NavDrawerScreenState();
}

class _NavDrawerScreenState extends State<NavDrawerScreen> {

  String selectedNavItem = "Inbox";

  void _setNavItem(String item){
    Navigator.pop(context);
    setState(() {
      selectedNavItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldDrawerAppbar(
      drawerIcon: Icons.menu_open,
      title: Text(selectedNavItem),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            //----------------nav header-------------------------
            SizedBox(
              height: 250,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   const CircleAvatar(
                     backgroundColor: white,
                     radius: 45,
                   ),

                   const Height(height: 10),
                   Text("Kamrul Hasan",style: AppTypography.typography.titleMedium?.copyWith(color: white),),
                   Text("+880xxxxxxxx",style: AppTypography.typography.titleSmall?.copyWith(color: white),)

                 ],
                ),
              ),
            ),


            //----------------nav item list-------------------------
            ListTile(
              minVerticalPadding: 0,
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              leading: const Icon(Icons.inbox),
              title: const Text("Inbox"),
              trailing: const Text("1"),
              onTap: (){
                _setNavItem("Inbox");
              },
            ),


            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              leading: const Icon(Icons.star_border),
              title: const Text("Starred"),
              onTap: (){
                _setNavItem("Starred");
              },
            ),

            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              leading: const Icon(Icons.access_time_rounded),
              title: const Text("Snoozed"),
              onTap: (){
                _setNavItem("Snoozed");
              },
            ),

            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              leading: const Icon(Icons.label_important_outline_rounded),
              title: const Text("Important"),
              trailing: const Text("75"),
              onTap: (){
                _setNavItem("Important");
              },
            ),

            ListTile(
              title: Text("All labels",style: AppTypography.typography.titleSmall,),
            ),

            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              leading: const Icon(Icons.send_sharp),
              title: const Text("Sent"),
              onTap: (){
                _setNavItem("Sent");
              },
            ),

            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              leading: const Icon(Icons.send_and_archive_sharp),
              title: const Text("Scheduled"),
              trailing: const Text("5"),
              onTap: (){
                _setNavItem("Scheduled");
              },
            ),

            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),

              leading: const Icon(Icons.outbox),
              title: const Text("Outbox"),
              onTap: (){
                _setNavItem("Outbox");
              },
            ),

            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              leading: const Icon(Icons.drafts_outlined),
              title: const Text("Drafts"),
              onTap: (){
                _setNavItem("Drafts");
              },
            ),

            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),

              leading: const Icon(Icons.info_outline),
              title: const Text("Spam"),
              trailing: const Text("100+"),
              onTap: (){
                _setNavItem("Spam");
              },
            ),

            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),

              leading: const Icon(Icons.delete_forever_outlined),
              title: const Text("Trash"),
              onTap: (){
                _setNavItem("Trash");
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Text("$selectedNavItem body here",style: AppTypography.typography.headlineLarge,),
      ),

    );
  }
}
