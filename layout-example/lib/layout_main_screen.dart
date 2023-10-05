import 'package:common/widget/component_button.dart';
import 'package:dep_management/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:layout_example/baseline_screen.dart';
import 'package:layout_example/fractionally_sizebox_screen.dart';
import 'package:layout_example/imitedbox_screen.dart';
import 'package:layout_example/fittedbox_screen.dart';
import 'package:layout_example/intrinsic_heigh_screen.dart';
import 'package:layout_example/intrinsic_width_screen.dart';
import 'package:layout_example/sizebox_screen.dart';
import 'package:layout_example/flow_screen.dart';
import 'package:layout_example/grid_screen.dart';
import 'package:layout_example/indexed_stack_screen.dart';
import 'package:layout_example/wrap_screen.dart';
import 'package:layout_example/sliver_appbar_screen.dart';
import 'package:layout_example/column_screen.dart';
import 'package:layout_example/row_screen.dart';
import 'package:layout_example/stack_screen.dart';
import 'package:layout_example/container_screen.dart';
import 'package:layout_example/constainedbox_screen.dart';
import 'package:layout_example/aspectratio_screen.dart';
import 'package:layout_example/align_screen.dart';
import 'package:layout_example/center_screen.dart';
import 'package:layout_example/expand_screen.dart';
import 'package:layout_example/list_view_screen.dart';

class LayoutMainScreen extends StatelessWidget {
  const LayoutMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layouts"),
        centerTitle: true,
      ),


      body: SafeArea(
        child: SingleChildScrollView(
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
                    flex: 80,
                    title: "FittedBox",
                    icon: FontAwesomeIcons.box,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const FittedBoxWidgetScreen())
                      );
                    },
                  ),

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
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const FlowScreen())
                        );
                      }
                  ),

                  ComponentButton(
                    flex: 100,
                    title: "Indexed Stack",
                    icon: FontAwesomeIcons.cubesStacked,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const IndexedStackScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "GridView",
                    icon: FontAwesomeIcons.box,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const GridViewScreen())
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
                      title: "Wrap",
                      icon: FontAwesomeIcons.bacon,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const WrapScreen())
                        );
                      }
                  ),

                  ComponentButton(
                    flex: 100,
                    title: "SliverAppBar",
                    icon: FontAwesomeIcons.bars,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const SliverAppbarScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "ListView",
                    icon: FontAwesomeIcons.listOl,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const ListViewScreen())
                      );
                    },
                  ),


                ],
              ),


              //-------------Row 7-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "Baseline",
                      icon: FontAwesomeIcons.layerGroup,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const BaseLineScreen())
                        );
                      }
                  ),

                  ComponentButton(
                    flex: 100,
                    title: "FractionallySizedBox",
                    icon: FontAwesomeIcons.percent,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const FractionallySizedBoxScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "IntrinsicHeight",
                    icon: FontAwesomeIcons.textHeight,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const IntrinsicHeightScreen())
                      );
                    },
                  ),
                ],
              ),



              //-------------Row 8-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "IntrinsicWidth",
                      icon: FontAwesomeIcons.textWidth,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const IntrinsicWidthScreen())
                        );
                      }
                  ),

                  ComponentButton(
                    flex: 100,
                    title: "Overflow",
                    icon: FontAwesomeIcons.barsStaggered,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const IntrinsicHeightScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "SizedOverflow",
                    icon: FontAwesomeIcons.florinSign,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const ListViewScreen())
                      );
                    },
                  ),
                ],
              ),



              //-------------Row 9-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 80,
                      title: "OverflowBox",
                      icon: FontAwesomeIcons.box,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const WrapScreen())
                        );
                      }
                  ),

                  ComponentButton(
                    flex: 100,
                    title: "SizedOverflowBox",
                    icon: FontAwesomeIcons.box,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const SliverAppbarScreen())
                      );
                    },
                  ),

                  ComponentButton(
                    flex: 80,
                    title: "LayoutBuilder",
                    icon: FontAwesomeIcons.igloo,
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const ListViewScreen())
                      );
                    },
                  ),
                ],
              ),


              //-------------Row 10-----------------
              Row(
                children: [
                  ComponentButton(
                      flex: 100,
                      title: "Table",
                      icon: FontAwesomeIcons.table,
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> const WrapScreen())
                        );
                      }
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
