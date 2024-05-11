import 'package:flutter/material.dart';


extension DateTimeExtension on DateTime {
  DateTime convert(TimeOfDay time) {
    return DateTime(year, month, day, time.hour, time.minute);
  }
}
