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
                      title: Text("Dhaka <=> Dubai",style: AppTypography.typography.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      subtitle:  Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTypography.typography.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
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
