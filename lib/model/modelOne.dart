import 'package:flutter/material.dart';

class  Counter with ChangeNotifier {
  int value = 0;
  void increment() {
    value++;
    notifyListeners();
  }
  int get getText => value;
}