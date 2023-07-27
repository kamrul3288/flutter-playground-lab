import 'package:common/widget/component_button.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:layout_example/10_limitedbox_screen.dart';
import 'package:layout_example/11_fittedbox_screen.dart';
import 'package:layout_example/11_sizebox_screen.dart';
import 'package:layout_example/2_column_screen.dart';
import 'package:layout_example/3_row_screen.dart';
import 'package:layout_example/1_stack_screen.dart';
import 'package:layout_example/4_container_screen.dart';
import 'package:layout_example/5_constainedbox_screen.dart';
import 'package:layout_example/6_aspectratio_screen.dart';
import 'package:layout_example/7_align_screen.dart';
import 'package:layout_example/8_center_screen.dart';
import 'package:layout_example/9_expand_screen.dart';

class LayoutMainScreen extends StatelessWidget {
  const LayoutMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layouts"),
        centerTitle: true,
      ),


      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            //-------------Row 1-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 80,
                    title: "Stack",
                    icon: FontAwesomeIcons.boxesStacked,
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const StackScreen())
                      );
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "Column",
                  icon: FontAwesomeIcons.tableColumns,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const ColumnScreen())
                    );
                  },
                ),

                ComponentButton(
                  flex: 80,
                  title: "Row",
                  icon: FontAwesomeIcons.tableColumns,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const RowScreen())
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
                    title: "Container",
                    icon: FontAwesomeIcons.confluence,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const ContainerScreen())
                      );
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "ConstrainedBox",
                  icon: FontAwesomeIcons.accusoft,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const ConstrainedBoxScreen())
                    );
                  },
                ),

                ComponentButton(
                  flex: 80,
                  title: "Aspect Ratio",
                  icon: FontAwesomeIcons.asterisk,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const AspectRatioScreen())
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
                    title: "Align",
                    icon: FontAwesomeIcons.alignJustify,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const AlignScreen())
                      );
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "Center",
                  icon: FontAwesomeIcons.alignCenter,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const CenterScreen())
                    );
                  },
                ),

                ComponentButton(
                  flex: 80,
                  title: "Expanded",
                  icon: FontAwesomeIcons.expand,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const ExpandScreen())
                    );
                  },
                ),
              ],
            ),

            //-------------Row 4-----------------
            Row(
              children: [
                ComponentButton(
                    flex: 100,
                    title: "Limited Box",
                    icon: FontAwesomeIcons.boxesPacking,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const LimitedBoxScreen())
                      );
                    }
                ),
                ComponentButton(
                  flex: 100,
                  title: "FittedBox",
                  icon: FontAwesomeIcons.box,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const FittedBoxWidgetScreen())
                    );
                  },
                ),

                ComponentButton(
                  flex: 80,
                  title: "SizeBox",
                  icon: FontAwesomeIcons.boxTissue,
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const SizeBoxWidgetScreen())
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
                    title: "Flow",
                    icon: FontAwesomeIcons.waveSquare,
                    onTap: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=> const LimitedBoxScreen())
                      // );
                    }
                ),
                ComponentButton(
                  flex: 80,
                  title: "GridView",
                  icon: FontAwesomeIcons.box,
                  onTap: (){
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context)=> const FittedBoxWidgetScreen())
                    // );
                  },
                ),

                ComponentButton(
                  flex: 100,
                  title: "Indexed Stack",
                  icon: FontAwesomeIcons.cubesStacked,
                  onTap: (){
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context)=> const SizeBoxWidgetScreen())
                    // );
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
