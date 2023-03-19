import 'package:flutter/cupertino.dart';

import '../value_notifier_list.dart';

class NotifierViewModel with ChangeNotifier {
  /// SecondViewModel은 Singleton 디자인 패턴 활용
  /// Singleton 디자인 패턴을 사용하면 한번 생성된 SecondViewModel을 계속 사용 한다.
  /// 다시 말해 SecondViewModel은 데이터를 계속 가지고 있다.
  static final NotifierViewModel _notifierViewModel = NotifierViewModel._singleton();

  factory NotifierViewModel() => _notifierViewModel;

  NotifierViewModel._singleton();
  ValueNotifier<int> countNotifier = ValueNotifier(0);
  final ValueNotifierList<String> stList = ValueNotifierList([]);
}
