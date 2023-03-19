import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {
  int count = 0;
  List<String> st = [];

  void countUp() {
    count++;
    notifyListeners();
  }

  void addSt() {
    st.add(DateTime.now().toString());
    notifyListeners();
  }
}
