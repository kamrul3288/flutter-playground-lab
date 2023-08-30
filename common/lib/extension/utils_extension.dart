import 'package:common/theme/app_typography.dart';
import 'package:flutter/material.dart';

extension SnackBarExtension on BuildContext{
  void showSnackBar(String message){
    final snackBar = SnackBar(content: Text(message, style:  AppTypography.typography.bodyMedium));
    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}


extension DateTimeExtension on DateTime {
  DateTime convert(TimeOfDay time) {
    return DateTime(year, month, day, time.hour, time.minute);
  }
}
