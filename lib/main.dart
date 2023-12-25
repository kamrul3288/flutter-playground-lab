import 'package:bloc_state_management/bloc_observer.dart';
import 'package:common/theme/app_theme.dart';
import 'package:dep_management/bloc.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  Bloc.observer = MainBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

   