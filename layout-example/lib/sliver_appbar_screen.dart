import 'package:common/theme/app_typography.dart';
import 'package:common/widget/component_button.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class SliverAppbarScreen extends StatelessWidget {
  const SliverAppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[

          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  "https://www.travelandleisure.com/thmb/EgOd29BrHB7OGyPtUphjFA3wVfY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/emirates-airplane-A380117-fbc344589d314825961b792d0464e4af.jpg",
                fit: BoxFit.fill,
              ),
              title: Text("Journey Safe With Us",style: AppTypography.typography.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
              collapseMode: CollapseMode.parallax,
            )
          ),


          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  ComponentButton(
                      flex: 100,
                      title: "Home",
                      icon: FontAwesomeIcons.house,
                      onTap: (){}
                  ),

                  ComponentButton(
                      flex: 100,
                      title: "Air Ticket",
                      icon: FontAwesomeIcons.plane,
                      onTap: (){}
                  ),

                  ComponentButton(
                      flex: 100,
                      title: "Movie Ticket",
                      icon: FontAwesomeIcons.ticket,
                      onTap: (){}
                  ),
                ],
              ),
            ),
          ),



          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context,index){
                    return ListTile(
                     title: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Image.network(
                         "https://mediaim.expedia.com/destination/1/ababbd52d238b29e1b8e792873eb4fe2.jpg",
                         fit: BoxFit.fill,
                       ),
                     ),
                      subtitle:  Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                            "Dubai: Marina Yacht Cruise with Breakfast, Lunch, or Dinner",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.typography.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                        ),
                      ),
                    );
                  },
              childCount: 20,
            ),
          )

        ],
      ),
    );
  }
}
