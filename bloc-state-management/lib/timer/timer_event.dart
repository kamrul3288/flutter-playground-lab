sealed class TimerEvent {
  const TimerEvent();
}

final class TimerStarted extends TimerEvent {
  final int duration;
  const TimerStarted({required this.duration});
}

final class TimerPaused extends TimerEvent {
  const TimerPaused();
}

final class TimerResumed extends TimerEvent {
  const TimerResumed();
}

class TimerReset extends TimerEvent {
  const TimerReset();
}

final class TimerTicked extends TimerEvent {
  final int duration;
  const TimerTicked({required this.duration});
}