import 'package:common/common.dart';
import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});
  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  var fullName = "no-name";
  var fullNameLength = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Future",
      widgetDescription: "Future in Flutter refers to an object that represents a value that is not yet available but will be at some point in the future. A Future can be used to represent an asynchronous operation that is being performed, such as fetching data from a web API, reading from a file, or performing a computation.",
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [

            Row(
              children: [
                TextButton(
                    onPressed: ()async{
                      final fullName = await fetchFullName();
                      setState((){
                        this.fullName = fullName;
                      });
                    },
                    child: const Text("Fetch Full Name: ")
                ),
                Text(fullName)
              ],
            ),

            Row(
              children: [
                TextButton(
                    onPressed: ()async{
                      final length = await getNameLength();
                      setState((){
                        this.fullNameLength = length;
                      });
                    },
                    child: const Text("Fetch Name Length: ")
                ),
                Text(fullNameLength.toString())
              ],
            )

          ],
        ),
      ),
    );
  }

  Future<String> fetchFullName()async{
    await Future.delayed(Duration(seconds: 2));
    return "Kamrul Hasan";
  }

  Future<int> getNameLength()async{
    return await fetchFullName().then((value) => value.length);
  }
}
