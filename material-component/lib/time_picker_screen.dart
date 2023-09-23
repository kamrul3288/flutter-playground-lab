import 'package:common/extension/utils_extension.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dep_management/jiffy.dart';

class TimePickerScreen extends StatefulWidget {
  const TimePickerScreen({super.key});
  @override
  State<TimePickerScreen> createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  var dateTime = DateTime.now();

  Widget _iosStyleTimePicker(){
    return SizedBox(
      height: 300,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (dateTime){
          this.dateTime = dateTime;
        },
      ),
    );
  }

  void _androidStyleTimePicker()async{
    final time = await showTimePicker(
        context: context,
        initialTime:TimeOfDay(hour: dateTime.hour, minute: dateTime.minute),
    );
    if (time != null){
      dateTime = dateTime.convert(time);
      _showPickedTime();
    }

  }

  void _showPickedTime(){
    final formattedDateTime = Jiffy.parseFromDateTime(dateTime).format(pattern: "hh:mm");
    context.showSnackBar(formattedDateTime);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Time Picker",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //--------------------- IOS Sheet time picker example----------------
          const Width(width: double.infinity),
          FilledButton(
            onPressed: (){
              cupertinoPopup(
                  context,
                  child: _iosStyleTimePicker(),
                  onDoneClick: (){
                    _showPickedTime();
                    Navigator.pop(context);
                  }
              );
            },
            child: const Text("iOS Time Picker Sheet"),
          ),



          //---------------------IOS dialog time picker example----------------
          const Height(height: 20),
          FilledButton(
            onPressed: (){
              cupertinoDialog(
                  context,
                  child: _iosStyleTimePicker(),
                  onDoneClick: (){
                    _showPickedTime();
                    Navigator.pop(context);
                  }
              );
            },
            child: const Text("iOS Time Picker Dialog"),
          ),


          //--------------------- IOS Sheet time picker example----------------
          const Height(height: 20),
          const Width(width: double.infinity),
          FilledButton(
            onPressed: (){
              _androidStyleTimePicker();
            },
            child: const Text("Android Time Picker Dialog"),
          ),

        ],
      )
    );
  }

  void cupertinoPopup(BuildContext context,{required Widget child,required VoidCallback onDoneClick}){
    showCupertinoModalPopup(
        context: context,
        builder: (context){
          return CupertinoActionSheet(
            title: const Text("Select Time"),
            actions: [
              child
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: onDoneClick,
              child: const Text('Done'),
            ),
          );
        }
    );
  }

  void cupertinoDialog(BuildContext context,{required Widget child,required VoidCallback onDoneClick}){
    showCupertinoModalPopup(
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title: const Text("Select Time"),
            content: child,
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: (){
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),

              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: onDoneClick,
                child: const Text('Done'),
              ),
            ],
          );
        }
    );
  }
}
