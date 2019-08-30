/*import 'package:flutter/widgets.dart';

class Counter extends ChangeNotifier {
  int _counter = 0;
  Counter(this._counter);
  get getCounter => _counter;

  incrementCounter() {
    this._counter++;
    notifyListeners();
  }
}*/
import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _counter = 0;


  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
