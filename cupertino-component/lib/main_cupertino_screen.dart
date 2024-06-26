import 'package:design_system/component/scaffold_appbar.dart';
import 'package:cupertino_component/action_sheet_cupertino.dart';
import 'package:cupertino_component/button_cupertino.dart';
import 'package:cupertino_component/date_time_picker_cupertino.dart';
import 'package:cupertino_component/dialog_cupertino.dart';
import 'package:cupertino_component/indicator_cupertino.dart';
import 'package:cupertino_component/menu_cupertino.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ui/widget/component_button.dart';

class MainCupertinoScreen extends StatelessWidget {
  const MainCupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldInfoActionAppBar(
      title: "Cupertino",
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              //-------------Row 1-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Action Sheet",
                      icon: FontAwesomeIcons.stroopwafel,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const ActionSheetCupertinoScreen())
                        );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Indicator",
                    icon: FontAwesomeIcons.spinner,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const IndicatorCupertinoScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Alert Dialog",
                    icon: FontAwesomeIcons.fire,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const DialogCupertinoScreen())
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
                      title: "Button",
                      icon: FontAwesomeIcons.eject,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const ButtonCupertinoScreen())
                        );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Context Menu",
                    icon: FontAwesomeIcons.ellipsisVertical,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const MenuCupertinoScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Date Time Picker",
                    icon: FontAwesomeIcons.calendar,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const DateTimePickerCupertinoScreen())
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
                      title: "List Selection",
                      icon: FontAwesomeIcons.listCheck,
                      onTap: (){
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const StackScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "List Tile",
                    icon: FontAwesomeIcons.list,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const ColumnScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Navigation Bar",
                    icon: FontAwesomeIcons.locationArrow,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const RowScreen())
                      // );
                    },
                  ),
                ],
              ),



              //-------------Row 4-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Scaffold",
                      icon: FontAwesomeIcons.sackDollar,
                      onTap: (){
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const StackScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Page Transition",
                    icon: FontAwesomeIcons.page4,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const ColumnScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Picker",
                    icon: FontAwesomeIcons.truckPickup,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const RowScreen())
                      // );
                    },
                  ),
                ],
              ),


              //-------------Row 5-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Scrollbar",
                      icon: FontAwesomeIcons.scroll,
                      onTap: (){
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const StackScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "TextField",
                    icon: FontAwesomeIcons.keyboard,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const ColumnScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Segmented Control",
                    icon: FontAwesomeIcons.tabletButton,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const RowScreen())
                      // );
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
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const StackScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "Sliver Navigation Bar",
                    icon: FontAwesomeIcons.locationArrow,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const ColumnScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "Switch",
                    icon: FontAwesomeIcons.toggleOn,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const RowScreen())
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
                      title: "TabBar",
                      icon: FontAwesomeIcons.tableList,
                      onTap: (){
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context)=> const StackScreen())
                        // );
                      }
                  ),
                  ComponentButton(
                    flex: 100,
                    title: "TabView",
                    icon: FontAwesomeIcons.tableList,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const ColumnScreen())
                      // );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "TimePicker",
                    icon: FontAwesomeIcons.clock,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const RowScreen())
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
