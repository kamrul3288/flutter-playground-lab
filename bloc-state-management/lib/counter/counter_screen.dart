import 'package:bloc_state_management/counter/counter_cubit.dart';
import 'package:common/common.dart';
import 'package:dep_management/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Counter",

      body: BlocConsumer<CounterCubit,CounterState>(
        listener: (context,state){
          if(state.wasIncremented){
            context.showSnackBar("Incremented");
          }else{
            context.showSnackBar("Decremented");
          }
        },
        builder: (context,state){
          return Center(
            child: Text(
              state.counterValue.toString(),
              style: AppTypography.typography.displayLarge,
            ),
          );
        },
      ),

      floatingActionButton: Wrap(
        spacing: 24,
        children: [
          FloatingActionButton(
            onPressed: ()=> context.read<CounterCubit>().decrement(),
            child: Icon(Icons.remove),
            backgroundColor: Colors.red,
          ),

          FloatingActionButton(
            onPressed: ()=> context.read<CounterCubit>().increment(),
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
          ),

        ],
      ),
    );
  }
}
