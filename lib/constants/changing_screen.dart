import 'package:flutter/material.dart';

void nextScreen(context, nextScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => nextScreen));
}

void nexrScreenReplacement(context, nextScreen) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => nextScreen));
}

void backScreen(
  context,
) {
  Navigator.pop(context);
}
