import 'package:common/common.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/cupertino.dart';

class DateTimePickerCupertinoScreen extends StatefulWidget {
  const DateTimePickerCupertinoScreen({super.key});

  @override
  State<DateTimePickerCupertinoScreen> createState() => _DateTimePickerCupertinoScreenState();
}

class _DateTimePickerCupertinoScreenState extends State<DateTimePickerCupertinoScreen> {
  DateTime date = DateTime.now();
  DateTime time = DateTime.now();
  DateTime dateTime = DateTime.now();


  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldActionAppBar(
      title: "Date Time Picker",

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            _DateTimePickerItem(
              children: <Widget>[
                const Text('Date'),
                CupertinoButton(
                  onPressed: () => _showDialog(
                    //----------------CupertinoDatePicker----------------------
                    CupertinoDatePicker(
                      initialDateTime: date,
                      mode: CupertinoDatePickerMode.date,
                      showDayOfWeek: true,
                      onDateTimeChanged: (DateTime newDate) {
                        setState(() => date = newDate);
                      },
                    ),
                  ),
                  child: Text('${date.month}-${date.day}-${date.year}', style: const TextStyle(fontSize: 22.0),
                  ),
                ),
              ],
            ),



            _DateTimePickerItem(
              children: <Widget>[
                const Text('Time'),
                CupertinoButton(
                  onPressed: () => _showDialog(
                    CupertinoDatePicker(
                      initialDateTime: time,
                      mode: CupertinoDatePickerMode.time,
                      onDateTimeChanged: (DateTime newTime) {
                        setState(() => time = newTime);
                      },
                    ),
                  ),
                  child: Text('${time.hour}:${time.minute}', style: const TextStyle(fontSize: 22.0),
                  ),
                ),
              ],
            ),


            _DateTimePickerItem(
              children: <Widget>[
                const Text('DateTime'),
                CupertinoButton(
                  onPressed: () => _showDialog(
                    CupertinoDatePicker(
                      initialDateTime: time,
                      mode: CupertinoDatePickerMode.dateAndTime,
                      onDateTimeChanged: (DateTime newTime) {
                        setState(() => time = newTime);
                      },
                    ),
                  ),
                  child: Text('${dateTime.month}-${dateTime.day}-${dateTime.year} ${dateTime.hour}:${dateTime.minute}', style: const TextStyle(fontSize: 22.0),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}


class _DateTimePickerItem extends StatelessWidget {
  const _DateTimePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}