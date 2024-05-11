import 'package:design_system/theme/app_typography.dart';
import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});
  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _switchValue = true;

  void _changeSwitchValue(bool newValue){
    setState(() {
      _switchValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Switch",

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Width(width: double.infinity),


            //----------------------- Material Switch Example----------------------------
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text("Material Switch:",style: AppTypography.typography.labelLarge,),
                const Width(width: 16),

                Switch(
                  value: _switchValue,
                  onChanged: (newValue){
                    _changeSwitchValue(newValue);
                  },
                  inactiveTrackColor: Colors.grey,
                ),

                 
                const Width(width: 16),
                Switch(
                  value: _switchValue,
                  onChanged: (newValue){
                    _changeSwitchValue(newValue);
                  },
                  thumbColor: MaterialStateProperty.resolveWith((states){
                    if(states.contains(MaterialState.selected)){
                      return Theme.of(context).colorScheme.primary;
                    }
                    return Colors.grey;
                  }),
                  thumbIcon: MaterialStateProperty.resolveWith((states){
                    if(states.contains(MaterialState.selected)){
                      return const Icon(Icons.check_circle,size: 24,);
                    }
                    return const Icon(Icons.radio_button_off,size: 24,);
                  }),
                  inactiveTrackColor: Colors.grey,

                ),
              ],
            ),



            //----------------------- Ios Switch Example----------------------------
            const Height(height: 16),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text("Cupertino Switch:",style: AppTypography.typography.labelLarge,),
                const Width(width: 16),

                CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (newValue){
                    _changeSwitchValue(newValue);
                  },
                ),
              ],
            ),




            //----------------------- Adaptive Switch Example----------------------------
            const Height(height: 16),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text("Adaptive Switch:",style: AppTypography.typography.labelLarge,),
                const Width(width: 16),

                Switch.adaptive(
                  value: _switchValue,
                  onChanged: (newValue){
                    _changeSwitchValue(newValue);
                  },
                  inactiveTrackColor: Colors.grey,
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
