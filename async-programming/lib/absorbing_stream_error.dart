


import 'dart:async';

void main() async{
  await for (final result in names().absorbErrorUsingHandleError()){
    print(result);
  }

  await for (final result in names().absorbErrorUsingHandlers()){
    print(result);
  }
}


Stream<String> names() async*{
  yield "Kamrul";
  yield "Hasan";
  throw "All out of name";
}

extension AbsorbError<T> on Stream<T>{
  Stream<T> absorbErrorUsingHandleError() => handleError((_,__){});

  Stream<T> absorbErrorUsingHandlers() => transform(
    StreamTransformer.fromHandlers(handleError: (_,__,sink)=>sink.close())
  );

}