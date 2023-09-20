import 'package:common/theme/app_colors.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

enum _Gender{male, female}

class _RadioButtonScreenState extends State<RadioButtonScreen> {

  _Gender? _gender = _Gender.male;

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppBarWithInfoAction(
      title: "Radio Button",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            //-----------Simple gender radio button------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<_Gender>(
                  value: _Gender.male,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                const Text("Male"),


                Radio<_Gender>(
                  value: _Gender.female,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                const Text("Female")
              ],
            ),


            //-----------customize gender radio button------------------
            const Height(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.circular(24),
                      color: _gender == _Gender.male ? Theme.of(context).colorScheme.primary : Colors.transparent
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 8),
                    child:  Text("Male",
                      style: TextStyle(
                        color: _gender == _Gender.male ? white : colors(context).black
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      _gender = _Gender.male;
                    });
                  },
                ),


                const Width(width: 24),
                InkWell(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(24),
                        color: _gender == _Gender.female ? Theme.of(context).colorScheme.primary : Colors.transparent
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 8),
                    child:  Text("Female",
                      style: TextStyle(
                          color: _gender == _Gender.female ? white : colors(context).black
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      _gender = _Gender.female;
                    });
                  },
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
