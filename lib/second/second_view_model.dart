import 'package:flutter/cupertino.dart';

class SecondViewModel with ChangeNotifier {

  /// SecondViewModel은 Singleton 디자인 패턴 활용
  /// Singleton 디자인 패턴을 사용하면 한번 생성된 SecondViewModel을 계속 사용
  static final SecondViewModel _secondViewModel = SecondViewModel._singleton();

  factory SecondViewModel() => _secondViewModel;

  SecondViewModel._singleton();

  int count = 0;

  void countUp() {
    count++;
    notifyListeners();
  }
}
