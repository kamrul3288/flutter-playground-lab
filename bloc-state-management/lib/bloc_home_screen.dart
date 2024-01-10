
import 'package:bloc_state_management/counter/counter_cubit.dart';
import 'package:bloc_state_management/counter/counter_screen.dart';
import 'package:common/common.dart';
import 'package:dep_management/flutter_bloc.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class BlocHomeScreen extends StatefulWidget {
  const BlocHomeScreen({super.key});
  @override
  State<BlocHomeScreen> createState() => _BlocHomeScreenState();
}

class _BlocHomeScreenState extends State<BlocHomeScreen> {

  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Bloc State Management",

      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [

            //-------------Row 1-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 100,
                    title: "Counter",
                    icon: FontAwesomeIcons.plus,
                    onTap: ()=>Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> BlocProvider(
                          create: (_)=> CounterCubit(),
                          child: CounterScreen(),
                        ),
                      ),
                    )
                ),


                ComponentButton(
                  flex: 100,
                  title: "CountDown Timer",
                  icon: FontAwesomeIcons.clock,
                  onTap: (){},
                ),
              ],
            ),


            //-------------Row 2-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 100,
                    title: "Infinity List",
                    icon: FontAwesomeIcons.infinity,
                    onTap: (){}
                ),

                ComponentButton(
                  flex: 100,
                  title: "Bloc-Bloc Communication",
                  icon: FontAwesomeIcons.wpforms,
                  onTap: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
