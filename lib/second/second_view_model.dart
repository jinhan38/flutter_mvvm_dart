import 'package:flutter/cupertino.dart';

class SecondViewModel with ChangeNotifier {
  static final SecondViewModel _secondViewModel = SecondViewModel._singleton();

  factory SecondViewModel() => _secondViewModel;
  SecondViewModel._singleton();

  int count = 0;

  void countUp() {
    count++;
    notifyListeners();
  }
}
