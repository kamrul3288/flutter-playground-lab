
import 'dart:async';

void main() async{
  final controller = StreamController<String>();
  controller.sink.add("Kamrul");
  controller.sink.add("Hasan");

  await for(final result in await controller.stream){
    print(result);
  }
  controller.close();
}


