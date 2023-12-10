
void main()async{

  /*
  // stream example
  await for (final value in getNumbers()){
    print(value);
  }

  // steam asyncExpand example
  await for(final result in getNames().asyncExpand((event) => getNameCharacters(event))){
    print(result);
  }

  // steam reduce() example
  final sum = await getAllMarks().reduce((previous, element) => previous+element);
  print(sum);

  await for ( final value in  numbers(function: evenNumbersOnly)){
    print(value);
  }
  await for ( final value in  numbers(function: oddNumberOnly)){
    print(value);
  }
  */

}


//return streams example
Stream<String> maleNames()async*{
  yield "Sajid";
  yield "Hasan";
}

Stream<String> femaleNames()async*{
  yield "Safa";
  yield "Hasan";
}

Stream<String> getAllNames()async*{
  yield* maleNames();
  yield* femaleNames();
}



//Asynchronous Generator Example
bool evenNumbersOnly(int value) => value % 2 == 0;
bool oddNumberOnly(int value) => value % 2 != 0;
Stream<int> numbers({
  int start = 0,
  int end = 4,
  bool Function(int value)? function,
})async*{
  for (var i = start; i<= end ; i++){
    if(function == null || function(i)){
      yield i;
    }
  }
}



Stream<int> getAllMarks()async*{
  await Future.delayed(Duration(milliseconds: 200));
  yield 50;
  await Future.delayed(Duration(milliseconds: 200));
  yield 60;
  await Future.delayed(Duration(milliseconds: 200));
  yield 70;
  await Future.delayed(Duration(milliseconds: 200));
  yield 80;
  await Future.delayed(Duration(milliseconds: 200));
  yield 90;
  await Future.delayed(Duration(milliseconds: 200));
  yield 95;
}


Stream<String> getNames() async*{
  await Future.delayed(Duration(milliseconds: 200));
  yield "Kamrul";
  await Future.delayed(Duration(milliseconds: 200));
  yield "Hasan";
}

Stream<String> getNameCharacters(String fromString)async*{
  for(var i = 0 ; i<fromString.length; i++){
    await Future.delayed(Duration(milliseconds: 300));
    yield fromString[i];
  }
}


Stream<int> getNumbers() async*{
  for(var i = 0 ; i<10 ; i++){
    await Future.delayed(Duration(milliseconds: 300));
    yield i;
  }
}























