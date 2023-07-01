import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;
  int count1 = 0;
  void incrment() {
    count++;

    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }

  void incrment2() {
    count1 += 2;
    notifyListeners();
  }

  void decrement2() {
    count1 -= 2;
    notifyListeners();
  }
}
