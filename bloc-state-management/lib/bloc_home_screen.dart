import 'package:bloc_state_management/counter/bloc_counter_screen.dart';
import 'package:bloc_state_management/counter/counter_cubit.dart';
import 'package:common/common.dart';
import 'package:dep_management/flutter_bloc.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class BlocHomeScreen extends StatelessWidget {
  const BlocHomeScreen({super.key});

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
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context){
                            return BlocProvider(
                              create: (_)=>CounterCubit(),
                              child: const BlocCounterScreen(),
                            );
                          })
                      );
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "Timer",
                  icon: FontAwesomeIcons.clock,
                  onTap: (){

                  },
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
