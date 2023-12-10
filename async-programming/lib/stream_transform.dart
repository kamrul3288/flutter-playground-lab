

import 'dart:async';

void main()async{
  await for(final result in names.map((event) => event.toUpperCase())){
    print(result);
  }

  await for(final result in names.capitalized){
    print(result);
  }

  final result = await getNames().asyncMap((event) => extractCharacter(event)).fold("", (previous, element) => "$previous $element ");
  print(result);
}


Stream<String> getNames() async*{
  yield "Kamrul";
  yield "Hasan";
}

Future<List<String>> extractCharacter(String from){
  return Future.value(from.split(""));
}




Stream<String> names = Stream.fromIterable(
  ["Kamrul", "Hasan", "Sobuj"]
);

class ToUpperCase extends StreamTransformerBase<String,String>{
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((event) => event.toUpperCase());
  }
}

extension on Stream<String>{
  Stream<String> get capitalized => transform(ToUpperCase());

  Stream<String> get getCapitalizedUsingMap => map((event) => event.toUpperCase());
}