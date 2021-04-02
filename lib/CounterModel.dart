
import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  /*int _noOfPersons=1 ;

  //CounterModel(this._noOfPersons);

  get addQuantity => _noOfPersons;

  getCounter() => _noOfPersons;
  setCounter(int counter) => _noOfPersons = counter;

  void increment() {
    _noOfPersons++;
    notifyListeners();
  }

  void decrement() {
    _noOfPersons--;
    notifyListeners();
  }*/

var _count = 0;

int get getCounter {
  return _count;
}

void incrementCounter() {
  _count++;
  notifyListeners ();
}
void decrementCounter() {
  _count--;
  notifyListeners ( );
}
}