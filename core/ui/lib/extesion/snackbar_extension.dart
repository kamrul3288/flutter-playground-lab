import 'package:design_system/theme/app_typography.dart';
import 'package:flutter/material.dart';

extension SnackBarExtension on BuildContext{
  void showSnackBar(String message){
    final snackBar = SnackBar(content: Text(message, style:  AppTypography.typography.bodyMedium));
    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

