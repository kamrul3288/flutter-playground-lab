import 'package:common/theme/app_colors.dart';
import 'package:common/theme/app_typography.dart';
import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class ChipsScreen extends StatefulWidget {
  const ChipsScreen({super.key});
  @override
  State<ChipsScreen> createState() => _ChipsScreenState();
}

class _ChipsScreenState extends State<ChipsScreen> {

  int? inputChipSelectedIndex;
  int inputChipLength = 2;

  int? choiceChipSelectedIndex;
  int choiceChipLength = 4;

  Set<_ExerciseFilter> filters = <_ExerciseFilter>{};
  bool favorite = false;


  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Chips",

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Width(width: double.infinity),


              Text("Input Chip Sample:",style: AppTypography.typography.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 5,
                children: List<Widget>.generate(inputChipLength, (index){
                  return InputChip(
                    label: Text("Person ${index+1}"),
                    selected: inputChipSelectedIndex == index,
                    labelStyle: TextStyle(color: inputChipSelectedIndex == index ? white : colors(context).black),
                    onSelected: (selected){
                      setState(() {
                        inputChipSelectedIndex = inputChipSelectedIndex == index ? null : index;
                      });
                    },
                    onDeleted: (){
                      setState(() {
                        inputChipLength = inputChipLength - 1;
                      });
                    },
                  );
                }).toList(),
              ),



              const Height(height: 24),
              Text("Choice Chip Sample:",style: AppTypography.typography.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 5,
                children: List<Widget>.generate(choiceChipLength, (index){
                  return ChoiceChip(
                    label: Text("Item ${index+1}"),
                    selected: choiceChipSelectedIndex == index,
                    labelStyle: TextStyle(color: choiceChipSelectedIndex == index ? white : colors(context).black),
                    onSelected: (selected){
                      setState(() {
                        choiceChipSelectedIndex = choiceChipSelectedIndex == index ? null : index;
                      });
                    },
                  );
                }).toList(),
              ),



              const Height(height: 24),
              Text("Filter Chip Sample:",style: AppTypography.typography.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 5,
                children: _ExerciseFilter.values.map((exercise){
                  return FilterChip(
                    label: Text(exercise.name),
                    selected: filters.contains(exercise),
                    labelStyle: TextStyle(color:  filters.contains(exercise) ? white : colors(context).black),
                    onSelected: (selected){
                      setState(() {
                        if(selected) {
                          filters.add(exercise);
                        } else {
                          filters.remove(exercise);
                        }
                      });
                    },
                  );
                }).toList(),
              ),



              const Height(height: 24),
              Text("Action Chip Sample:",style: AppTypography.typography.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
              ActionChip(
                avatar: Icon(favorite ? Icons.favorite : Icons.favorite_border,color: purple40,),
                label: const Text('Save to favorites'),
                onPressed: () {
                  setState(() {
                    favorite = !favorite;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum _ExerciseFilter { walking, running, cycling }
