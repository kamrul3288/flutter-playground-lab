class BlocTicker{
  const BlocTicker();

  // Method to generate a stream of integers for a countdown.
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
        const Duration(seconds: 1),  // Generates events at 1-second intervals.
        (x)=> ticks - x -1
    ).take(ticks); // Limits the stream to emit a specified number of ticks.
  }
}