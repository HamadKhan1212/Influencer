import 'package:flutter/material.dart';
import 'package:homescreen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        checkboxTheme: CheckboxThemeData(
          visualDensity:
              VisualDensity.standard, // Set visualDensity to standard
        ),
      ),
      home: HomePage(),
    );
  }
}
