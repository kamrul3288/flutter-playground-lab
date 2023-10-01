import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';


class BottomAppbarScreen extends StatelessWidget {
  const BottomAppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBottomNavigationAppbar(
      title: const Text("Bottom App Bar"),
      body: const Center(
        child: Text("Content here..."),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        shape: const CircularNotchedRectangle(),
        child: Row(
           children: [

             IconButton(
               tooltip: 'Open navigation menu',
               icon: const Icon(Icons.menu),
               onPressed: () {},
             ),

             const Spacer(),

             IconButton(
               tooltip: 'Search',
               icon: const Icon(Icons.search),
               onPressed: () {},
             ),

             IconButton(
               tooltip: 'Favorite',
               icon: const Icon(Icons.favorite),
               onPressed: () {},
             ),
           ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create',
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
