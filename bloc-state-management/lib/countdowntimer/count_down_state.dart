part of 'count_down_bloc.dart';

sealed class CountDownState extends Equatable {
  final int duration;
  const CountDownState({required this.duration});

  @override
  List<Object> get props => [duration];
}

final class CountDownInitialState extends CountDownState {
  CountDownInitialState({required super.duration});
}

final class CountDownPauseState extends CountDownState {
  CountDownPauseState({required super.duration});
}

final class CountDownInProgressState extends CountDownState {
  CountDownInProgressState({required super.duration});
}

