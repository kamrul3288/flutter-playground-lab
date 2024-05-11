
import 'dart:async';
import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/theme/app_typography.dart';
import 'package:design_system/component/component_size_widgets.dart';
import 'package:design_system/component/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class TextFiledScreen extends StatefulWidget {
  const TextFiledScreen({super.key});

  @override
  State<TextFiledScreen> createState() => _TextFiledScreenState();
}

class _TextFiledScreenState extends State<TextFiledScreen> {
  var _isPasswordVisible = false;

  final textFiledController1 = TextEditingController();
  final textFiledController2 = TextEditingController();
  final textFiledController3 = TextEditingController();
  final textFiledController4 = TextEditingController();
  final textFiledController5 = TextEditingController();


  void _changePasswordVisibility(bool status){
    setState(() {
      _isPasswordVisible = status;
    });
  }


  @override
  Widget build(BuildContext context) {
    return   ScaffoldInfoActionAppBar(
      title: "Text Filed",
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.only(left:16,right:16,bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [

              //---------------------Under line text field example--------------------
              TextField(
                controller: textFiledController1,
                decoration: InputDecoration(
                  hintText: "Enter you name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                  )
                ),
              ),


              //---------------------Out line text field example--------------------
              const Height(height: 16),
              TextFormField(
                controller: textFiledController2,
                decoration:   InputDecoration(
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                  ),
                  label: const Text("Enter your email"),
                ),
                keyboardType: TextInputType.emailAddress,
              ),


              //---------------------Password text field example--------------------
              const Height(height: 16),
              TextFormField(
                controller: textFiledController3,
                decoration:   InputDecoration(
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                  ),
                  label: const Text("Enter your password"),
                  prefixIcon: Icon(Icons.lock_outline_rounded, color: Theme.of(context).colorScheme.primary,),
                  suffixIcon: IconButton(
                      onPressed: (){
                        _changePasswordVisibility(!_isPasswordVisible);
                      },
                      icon: Icon(_isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined, color: Theme.of(context).colorScheme.primary,)
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_isPasswordVisible,
              ),


              //---------------------Password text field example--------------------
              const Height(height: 16),
              TextFormField(
                controller: textFiledController3,
                decoration:   InputDecoration(
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                  ),
                  label: const Text("Enter your password"),
                  prefixIcon: Icon(Icons.lock_outline_rounded, color: Theme.of(context).colorScheme.primary,),
                  suffixIcon: IconButton(
                      onPressed: (){
                        _changePasswordVisibility(!_isPasswordVisible);
                      },
                      icon: Icon(_isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined, color: Theme.of(context).colorScheme.primary,)
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_isPasswordVisible,
              ),



              //---------------------Address text field example--------------------
              const Height(height: 16),
              TextFormField(
                controller: textFiledController4,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.primary,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your address",
                  hintStyle: const TextStyle(color: white)
                ),
                cursorColor: white,
                style: AppTypography.typography.bodyLarge?.copyWith(color: white),
              ),


              const Height(height: 16),
              TextFormField(
                controller: textFiledController5,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: white),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.primary,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.lock_outline_rounded, color: white,),
                ),
                cursorColor: white,
                style: AppTypography.typography.bodyLarge?.copyWith(color: white),

              ),


              //---------------------Autocomplete text field example--------------------
              const Height(height: 16),
              const AutoCompleteTextFiledExample()
            ],
          ),
        ),
      ),
    );
  }
}

class AutoCompleteTextFiledExample extends StatefulWidget {
  const AutoCompleteTextFiledExample({super.key});

  @override
  State<AutoCompleteTextFiledExample> createState() => _AutoCompleteTextFiledExampleState();
}

class _AutoCompleteTextFiledExampleState extends State<AutoCompleteTextFiledExample> {
  final textFiledController = TextEditingController();
  final _countryList = ["Bangladesh","Nepal","Bhutan","USA","Russia","Brazil","Brono"];
  OverlayEntry? entry;
  final layerLink = LayerLink();
  final double maxSuggestionListHeight = 250;
  Timer? _debounce;


  @override
  void initState() {
    super.initState();
    textFiledController.addListener(_onTextFieldChange);
  }

  @override
  void dispose() {
    _removeListenerAndOverlay();
    super.dispose();
  }

  void _removeListenerAndOverlay(){
    _debounce?.cancel();
    textFiledController.removeListener(_onTextFieldChange);
    entry?.remove();
    entry = null;
  }


  void _onTextFieldChange() {

    if(_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      if (entry != null) {
        entry?.remove();
        entry = null;
      }
      final itemList = _countryList.where((element) => element.contains(textFiledController.text));
      if (itemList.isNotEmpty && textFiledController.text.isNotEmpty) {
        _showAutoCompleteSuggestionOverlay(itemList);
      }

    });
  }


  void _showAutoCompleteSuggestionOverlay(Iterable<String> items){
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final listItemTotalHeight = items.length * 52;
    final upOffset = listItemTotalHeight > maxSuggestionListHeight ? - maxSuggestionListHeight : - listItemTotalHeight.toDouble();


    entry = OverlayEntry(
      builder: (context)=> Positioned(
        width: renderBox.size.width,
        child: CompositedTransformFollower(
            link: layerLink,
            offset:  Offset(0,upOffset),
            child: buildAutoCompleteSuggestionOverlay(items),
        ),
      ),
    );
    overlay.insert(entry!);
  }

  Widget buildAutoCompleteSuggestionOverlay(Iterable<String> items){
    return  Material(
      elevation: 5,
      child: ConstrainedBox(
        constraints:  BoxConstraints(
          maxHeight: maxSuggestionListHeight
        ),
        child: ListView.separated(
          shrinkWrap: true,
          reverse: true,
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemBuilder: (context,index){
            return InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Text(items.elementAt(index)),
              ),
              onTap: (){
                textFiledController.text = items.elementAt(index);
                _removeListenerAndOverlay();
                Future.delayed(const Duration(milliseconds: 300),(){
                  textFiledController.addListener(_onTextFieldChange);
                });

              },
            );
          },
          separatorBuilder: (context,index)=> Divider(
            color: Colors.grey.withOpacity(0.3),
          ),
          itemCount: items.length,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return  CompositedTransformTarget(
      link: layerLink,
      child: TextFormField(
        controller: textFiledController,
        decoration:   InputDecoration(
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
            ),
            hintText: "Search your country"
        ),
        keyboardType: TextInputType.text,
      )
    );
  }
}






































