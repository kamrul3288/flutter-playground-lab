import 'package:common/theme/app_typography.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class BadgeScreen extends StatefulWidget {
  const BadgeScreen({super.key});
  @override
  State<BadgeScreen> createState() => _BadgeScreenState();
}

class _BadgeScreenState extends State<BadgeScreen> {
  int currentPageIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return ScaffoldBottomNavigationAppbar(
      title: const Text("Badge"),
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
            icon: Badge(
              label: Text("5"),
              offset: Offset(10, -10),
              child: Icon(Icons.favorite_border_outlined),
            ),
            label: 'Favourites',
          ),

          NavigationDestination(
            icon: Badge(
              label: Text("100+"),
              offset: Offset(10, -10),
              child: Icon(Icons.history),
            ),
            label: 'History',
          ),

          NavigationDestination(
            icon: Badge(
              label: Text("10"),
              offset: Offset(10, -10),
              child: Icon(Icons.account_circle),
            ),
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
