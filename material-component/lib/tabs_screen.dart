import 'package:common/theme/app_typography.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
        title: "Tabs",
        body: Column(
          children: [
            //---------------implement tabbar here--------------
            Material(
              color: Theme.of(context).colorScheme.primary,
              child: TabBar(
                controller: tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(
                    text: "Home",
                    icon: Icon(
                      FontAwesomeIcons.house,
                      size: 20,
                    ),
                  ),
                  Tab(
                    text: "Bookmark",
                    icon: Icon(FontAwesomeIcons.heart),
                  ),
                  Tab(
                    text: "Profile",
                    icon: Icon(FontAwesomeIcons.person),
                  )
                ],
              ),
            ),

            //-------------- Tabbar view implemented here----------------
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Center(
                    child: Text(
                      "Home",
                      style: AppTypography.typography.titleLarge,
                    ),
                  ),
                  Center(
                      child: Text(
                    "Bookmark",
                    style: AppTypography.typography.titleLarge,
                  )),
                  Center(
                      child: Text(
                    "Profile",
                    style: AppTypography.typography.titleLarge,
                  )),
                ],
              ),
            )
          ],
        ));
  }
}
