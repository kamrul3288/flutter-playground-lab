import 'package:common/constant/app_constant.dart';
import 'package:flutter/material.dart';

class ResponsiveFixedSize extends StatelessWidget {

  final Widget child;
  const ResponsiveFixedSize({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        return constraints.maxWidth >= AppConstant.webScreenSize ?
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: AppConstant.webScreenSize,
                child: child,
              ),
            )
            :
            SizedBox(
              width: double.infinity,
              child: child,
            );
      },
    );
  }
}
