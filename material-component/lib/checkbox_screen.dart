import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});
  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Checkbox",
      
      body: Column(
        children: [
          
          Row(
            children: [
              Checkbox(
                  value: isChecked,
                  onChanged: (value){
                    setState(() {
                      isChecked = value!;
                    });
                  }
              ),
              const Text("Material CheckBox")
            ],
          ),

          Row(
            children: [
              Checkbox.adaptive(
                  value: isChecked,
                  onChanged: (value){
                    setState(() {
                      isChecked = value!;
                    });
                  }
              ),
              const Text("Adaptive CheckBox")
            ],
          )
          
        ],
      ),
    );
  }
}
