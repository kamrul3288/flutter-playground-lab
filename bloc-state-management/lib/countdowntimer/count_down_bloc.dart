import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/countdowntimer/count_down_timer_repo.dart';
import 'package:equatable/equatable.dart';

part 'count_down_event.dart';
part 'count_down_state.dart';

class CountDownBloc extends Bloc<CountDownEvent, CountDownState> {
  final CountDownTimerRepository _countDownTimerRepository;
  static const int _duration = 60;
  StreamSubscription<int>? _tickerSubscription;


  CountDownBloc({required CountDownTimerRepository countDownTimerRepository}):
        _countDownTimerRepository = countDownTimerRepository,
        super(CountDownInitialState(duration: _duration)) {

    on<CountDownTimerStartEvent>(_onTimerStarted);
    on<CountDownTimerPauseEvent>(_onTimerPause);
    on<CountDownTimerResetEvent>(_onTimerReset);
    on<CountDownTimerResumeEvent>(_onTimerResume);
    on<_TimerTicketEvent>(_onTimerTicked);
  }

  void _onTimerStarted(CountDownTimerStartEvent event, Emitter<CountDownState>emit){
    _tickerSubscription?.cancel();
    _tickerSubscription = _countDownTimerRepository.startContDownTimer(timerCount: _duration)
        .listen((duration)=> add(_TimerTicketEvent(duration: duration)));
  }

  void _onTimerTicked(_TimerTicketEvent event, Emitter<CountDownState>emit){
    if(event.duration>0){
      emit(CountDownInProgressState(duration: event.duration));
    }else{
      emit(CountDownInitialState(duration: _duration));
    }
  }

  void _onTimerPause(CountDownTimerPauseEvent event, Emitter<CountDownState>emit){
    _tickerSubscription?.pause();
    emit(CountDownPauseState(duration: state.duration));
  }

  void _onTimerResume(CountDownTimerResumeEvent event, Emitter<CountDownState>emit){
    _tickerSubscription?.resume();
  }

  void _onTimerReset(CountDownTimerResetEvent event, Emitter<CountDownState>emit){
    _tickerSubscription?.cancel();
    emit(CountDownInitialState(duration: _duration));
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }


}
