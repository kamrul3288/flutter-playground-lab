import 'package:design_system/component/scaffold_appbar.dart';
import 'package:design_system/theme/app_typography.dart';
import 'package:flutter/material.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});
  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentPageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return ScaffoldBottomNavigationAppbar(
      title: const Text("Bottom Navigation"),


      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index){
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,

        destinations: const [

          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.favorite_border_outlined),
            selectedIcon: Icon(Icons.favorite),
            label: 'Favourites',
          ),

          NavigationDestination(
            icon: Icon(Icons.history),
            label: 'History',
          ),

          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),

      body: <Widget>[
        Center(child: Text("Home",style: AppTypography.typography.titleLarge?.copyWith(fontWeight: FontWeight.w600),)),
        Center(child: Text("Favourite", style: AppTypography.typography.titleLarge?.copyWith(fontWeight: FontWeight.w600),)),
        Center(child: Text("History", style: AppTypography.typography.titleLarge?.copyWith(fontWeight: FontWeight.w600),)),
        Center(child: Text("Account", style: AppTypography.typography.titleLarge?.copyWith(fontWeight: FontWeight.w600),)),
      ][currentPageIndex],


    );
  }
}
