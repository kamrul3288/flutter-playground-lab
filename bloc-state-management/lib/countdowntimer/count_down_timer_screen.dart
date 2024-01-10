import 'package:bloc_state_management/countdowntimer/count_down_bloc.dart';
import 'package:common/common.dart';
import 'package:dep_management/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CountDownTimerScreen extends StatelessWidget {
  const CountDownTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final duration = context.select((CountDownBloc bloc) => bloc.state.duration);
    final minutesStr = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');


    return ScaffoldActionAppBar(
      title: "Count Down Timer",

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text("$minutesStr:$secondsStr",style: AppTypography.typography.displayLarge,),

          SizedBox(height: 32,),
          BlocBuilder<CountDownBloc,CountDownState>(
            builder: (context,state){
              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [


                  ...switch(state){
                      CountDownInitialState()=>[
                        FloatingActionButton(
                          child: const Icon(Icons.play_arrow),
                          onPressed: ()=>context.read<CountDownBloc>().add(CountDownTimerStartEvent())
                        ),
                      ],
                      CountDownInProgressState()=>[
                        FloatingActionButton(
                          child: const Icon(Icons.pause),
                          onPressed: ()=>context.read<CountDownBloc>().add(CountDownTimerPauseEvent())
                        ),
                        FloatingActionButton(
                          child: const Icon(Icons.replay),
                          onPressed: ()=>context.read<CountDownBloc>().add(CountDownTimerResetEvent())
                        ),
                      ],

                      CountDownPauseState()=>[
                        FloatingActionButton(
                          child: const Icon(Icons.play_arrow),
                          onPressed: ()=>context.read<CountDownBloc>().add(CountDownTimerResumeEvent())
                        ),
                        FloatingActionButton(
                          child: const Icon(Icons.replay),
                          onPressed: ()=>context.read<CountDownBloc>().add(CountDownTimerResetEvent())
                        ),
                      ]
                  }

                ]
              );
            },
          )

        ],
      ),
    );
  }
}
