
import 'package:common/widget/component_button.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:material_component/bottom_sheet_screen.dart';
import 'package:material_component/button_screen.dart';
import 'package:material_component/card_screen.dart';
import 'package:material_component/icon_screen.dart';
import 'package:material_component/image_screen.dart';
import 'package:material_component/slider_screen.dart';
import 'package:material_component/snackbar_screen.dart';
import 'package:material_component/switch_screen.dart';
import 'package:material_component/tabs_screen.dart';
import 'package:material_component/text_field_screen.dart';
import 'package:material_component/text_screen.dart';
import 'package:material_component/time_picker_screen.dart';
import 'package:material_component/tool_tips_screen.dart';
import 'package:material_component/top_appbar_screen.dart';

class MaterialComponentMainScreen extends StatelessWidget {
  const MaterialComponentMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppBarWithInfoAction(
      title: "Material Component",
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              //-------------Row 1-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Text",
                      icon: FontAwesomeIcons.textWidth,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const TextScreen())
                        );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Button",
                    icon: FontAwesomeIcons.mobileButton,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const ButtonScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Icons",
                    icon: FontAwesomeIcons.icons,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const IconScreen())
                      );
                    },
                  ),
                ],
              ),

              //-------------Row 2-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Images",
                      icon: FontAwesomeIcons.image,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const ImageScreen())
                        );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "TextFiled",
                    icon: FontAwesomeIcons.textSlash,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const TextFiledScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Cards",
                    icon: FontAwesomeIcons.square,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const CardScreen())
                      );
                    },
                  ),
                ],
              ),


              //-------------Row 3-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Top Appbar",
                      icon: FontAwesomeIcons.barsProgress,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const TopAppBarScreen())
                        );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Time Picker",
                    icon: FontAwesomeIcons.clock,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const TimePickerScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "ToolTips",
                    icon: FontAwesomeIcons.gratipay,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const ToolTipsScreen())
                      );
                    },
                  ),
                ],
              ),


              //-------------Row 4-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Tabs",
                      icon: FontAwesomeIcons.tablet,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const TabsScreen())
                        );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Snack Bars",
                    icon: FontAwesomeIcons.info,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const SnackBarScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Switch",
                    icon: FontAwesomeIcons.toggleOn,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const SwitchScreen())
                      );
                    },
                  ),
                ],
              ),

              //-------------Row 5-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Slider",
                      icon: FontAwesomeIcons.sliders,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const SliderScreen())
                        );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Bottom Sheet",
                    icon: FontAwesomeIcons.stroopwafel,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const BottomSheetScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Search",
                    icon: FontAwesomeIcons.magnifyingGlass,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),
                ],
              ),

              //-------------Row 6-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Radio Button",
                      icon: FontAwesomeIcons.circleDot,
                      onTap: (){
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const LayoutMainScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Progress bar",
                    icon: FontAwesomeIcons.spinner,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Nav Drawer",
                    icon: FontAwesomeIcons.bars,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),
                ],
              ),

              //-------------Row 7-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Popup Menu",
                      icon: FontAwesomeIcons.dyalog,
                      onTap: (){
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const LayoutMainScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Bottom Navigation",
                    icon: FontAwesomeIcons.locationArrow,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Divider",
                    icon: FontAwesomeIcons.divide,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),
                ],
              ),

              //-------------Row 8-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Dialog",
                      icon: FontAwesomeIcons.exclamation,
                      onTap: (){
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const LayoutMainScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Date Picker",
                    icon: FontAwesomeIcons.calendar,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Chips",
                    icon: FontAwesomeIcons.filter,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),
                ],
              ),


              //-------------Row 8-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Checkbox",
                      icon: FontAwesomeIcons.squareCheck,
                      onTap: (){
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const LayoutMainScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Bottom Appbar",
                    icon: FontAwesomeIcons.sketch,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Badge",
                    icon: FontAwesomeIcons.certificate,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const MaterialComponentMainScreen())
                      // );
                    },
                  ),
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
