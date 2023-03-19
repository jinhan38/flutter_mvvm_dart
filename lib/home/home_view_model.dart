import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {
  int count = 0;

  void countUp() {
    count++;
    notifyListeners();
  }

  List<String> st = [];

  void addSt() {
    st = [...st, DateTime.now().toString()];
    notifyListeners();
  }
}
