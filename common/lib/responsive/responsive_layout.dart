import 'package:flutter/material.dart';
import 'package:common/constant/app_constant.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget webView;
  const ResponsiveLayout({Key? key,required this.mobileView,required this.webView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        return constraints.maxWidth >= AppConstant.webScreenSize ? webView : mobileView;
      },
    );
  }
}
