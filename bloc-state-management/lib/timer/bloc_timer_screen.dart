import 'package:bloc_state_management/timer/timer_bloc.dart';
import 'package:bloc_state_management/timer/timer_event.dart';
import 'package:bloc_state_management/timer/timer_state.dart';
import 'package:common/common.dart';
import 'package:dep_management/flutter_bloc.dart';
import 'package:flutter/material.dart';


class BlocTimerScreen extends StatelessWidget {
  const BlocTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final duration = context.select((TimerBloc bloc)=> bloc.state.duration);
    final minutesStr = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');


    return ScaffoldActionAppBar(
      title: "Timer",

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("$minutesStr:$secondsStr",style: AppTypography.typography.displayLarge?.copyWith(fontWeight: FontWeight.bold),),

            SizedBox(height: 50,),
            BlocBuilder<TimerBloc,TimerState>(
              buildWhen: (prev,state)=>prev.runtimeType != state.runtimeType,
              builder: (context,state){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...switch (state) {
                      TimerInitial() => [

                        FloatingActionButton(
                          child: const Icon(Icons.play_arrow),
                          onPressed: () => context
                              .read<TimerBloc>()
                              .add(TimerStarted(duration: state.duration)),
                        ),

                      ],
                      TimerRunInProgress() => [
                        FloatingActionButton(
                          child: const Icon(Icons.pause),
                          onPressed: () =>
                              context.read<TimerBloc>().add(const TimerPaused()),
                        ),
                        FloatingActionButton(
                          child: const Icon(Icons.replay),
                          onPressed: () =>
                              context.read<TimerBloc>().add(const TimerReset()),
                        ),
                      ],
                      TimerRunPause() => [
                        FloatingActionButton(
                          child: const Icon(Icons.play_arrow),
                          onPressed: () =>
                              context.read<TimerBloc>().add(const TimerResumed()),
                        ),
                        FloatingActionButton(
                          child: const Icon(Icons.replay),
                          onPressed: () =>
                              context.read<TimerBloc>().add(const TimerReset()),
                        ),
                      ],
                      TimerRunComplete() => [
                        FloatingActionButton(
                          child: const Icon(Icons.replay),
                          onPressed: () =>
                              context.read<TimerBloc>().add(const TimerReset()),
                        ),
                      ]
                    }
                  ],
                );
              },
            )
          ],
        ),
      ),

    );
  }
}
