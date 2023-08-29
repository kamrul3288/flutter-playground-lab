import 'package:common/widget/component_size_widgets.dart';
import 'package:common/widget/scaffold_appbar.dart';
import 'package:flutter/material.dart';

class TopAppBarScreen extends StatelessWidget {
  const TopAppBarScreen({super.key});

  List<Widget> _actionButton(){
    return [
      IconButton(
          onPressed: (){},
          icon: const Icon(Icons.attachment_outlined)
      ),
      IconButton(
          onPressed: (){},
          icon: const Icon(Icons.account_circle_outlined)
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppBarWithInfoAction(
      title: "Appbar",
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              //---------------Left align title appbar--------------------
              AppBar(
                leading: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.menu)
                ),
                title: const Text("Product"),
                centerTitle: false,
                actions:_actionButton()
              ),


              //--------------Center align title appbar----------------
              const Height(height: 20),
              AppBar(
                  leading: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.menu)
                  ),
                  title: const Text("Product"),
                  centerTitle: true,
                  actions:_actionButton()
              ),


              //------------------Large App bar example--------------------------
              const Height(height: 50),
              Expanded(
                child:  CustomScrollView(
                  slivers: [
                    SliverAppBar.large(
                        leading: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.menu)
                        ),
                        title: const Text("Product"),
                        centerTitle: false,
                        actions:_actionButton()
                    )
                  ],
                ),
              ),


              //------------------Medium App bar example--------------------------
              Expanded(
                child:  CustomScrollView(
                  slivers: [
                    SliverAppBar.medium(
                        leading: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.menu)
                        ),
                        title: const Text("Product"),
                        centerTitle: false,
                        actions:_actionButton()
                    )
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}

