import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});
  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  var ioSPickedDateTime = DateTime.now();

  void showMessage(String message){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Date Picker",

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            FilledButton(
              onPressed: (){
                _showMaterialDatePicker();
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                  ),
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
              ),
              child: const Text("Material Date Picker"),
            ),


            FilledButton(
              onPressed: (){
                _showIosDatePicker();
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                  ),
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
              ),
              child: const Text("Ios Date Picker"),
            )

          ],
        ),
      ),
    );
  }


  void _showMaterialDatePicker()async{
    final pickedDateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 7)),
        builder: (context,child){
          return Theme(
              data: Theme.of(context).copyWith(
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(foregroundColor: purple40)
                )
              ),
              child: child!
          );
        }
    );
    if (pickedDateTime != null) showMessage("Picked DateTime: $pickedDateTime");

  }

  void _showIosDatePicker()async{
    showCupertinoModalPopup(
        context: context,
        builder: (context){
          return CupertinoActionSheet(
            actions: [
              SizedBox(
                height: 400,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now(),
                  maximumDate: DateTime.now().add(const Duration(days: 7)),
                  onDateTimeChanged: (date){
                    ioSPickedDateTime = date;
                  },
                ),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: (){
                Navigator.pop(context);
                showMessage("Picked DateTime: $ioSPickedDateTime");
              },
              child: const Text('Done'),
            ),
          );
        }
    );
  }
}
