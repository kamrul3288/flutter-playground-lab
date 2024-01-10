part of 'count_down_bloc.dart';

sealed class CountDownEvent extends Equatable {
  const CountDownEvent();
}

final class CountDownTimerStartEvent extends CountDownEvent{
  CountDownTimerStartEvent();

  @override
  List<Object?> get props => [];
}

final class CountDownTimerPauseEvent extends CountDownEvent{
  const CountDownTimerPauseEvent();

  @override
  List<Object?> get props => [];
}

final class CountDownTimerResumeEvent extends CountDownEvent{
  const CountDownTimerResumeEvent();

  @override
  List<Object?> get props => [];
}


final class CountDownTimerResetEvent extends CountDownEvent{
  const CountDownTimerResetEvent();

  @override
  List<Object?> get props => [];
}

final class _TimerTicketEvent extends CountDownEvent{
  final int duration;
  const _TimerTicketEvent({required this.duration});

  @override
  List<Object?> get props => [duration];
}
