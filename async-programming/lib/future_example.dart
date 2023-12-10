
void main()async{

  // get future value
  final result = await getFullName();
  print(result);

  // chaining future
  final length = await getFullName().then(
          (value) => getFullNameLength(value)
  );
  print(length);


  //handle exception
  try{
    await getException();
  }catch(e){
    print(e.toString());
  }

}

Future<String> getFullName()async{
  await Future.delayed(Duration(seconds: 1));
  return Future.value("Kamrul Hasan");
}

Future<int> getFullNameLength(String name)async{
  await Future.delayed(Duration(seconds: 1));
  return name.length;
}

Future<String> getException()async{
  await Future.delayed(Duration(seconds: 1));
  throw Exception("Exception handel: Error Occurred");
}
