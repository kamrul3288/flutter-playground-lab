

import 'dart:async';

class CountDownTimerRepository{
  Stream<int> startContDownTimer({required int timerCount}){
    return Stream.periodic(
      Duration(seconds: 1),(second)=> timerCount - second - 1,
    ).take(timerCount);
  }
}