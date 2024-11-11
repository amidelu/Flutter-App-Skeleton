import 'package:flutter/material.dart';
import 'package:flutter_opl/main.dart';

class AppNavigator {
  static void pushReplacement(Widget widget) {
    BuildContext? context = navigatorKey.currentContext;

    Navigator.pushReplacement(
      context!,
      MaterialPageRoute(builder: (context) => widget)
    );
  }

  static void push(Widget widget) {
    BuildContext? context = navigatorKey.currentContext;

    Navigator.push(
      context!,
      MaterialPageRoute(builder: (context) => widget)
    );
  }

  static void pushAndRemove(Widget widget) {
    BuildContext? context = navigatorKey.currentContext;

    Navigator.pushAndRemoveUntil(
      context!,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false
    );
  }
}