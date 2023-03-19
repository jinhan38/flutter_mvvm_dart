import 'package:flutter/cupertino.dart';

import '../value_notifier_list.dart';

class NotifierViewModel {
  static final NotifierViewModel _notifierViewModel =
      NotifierViewModel._singleton();

  factory NotifierViewModel() => _notifierViewModel;

  NotifierViewModel._singleton();

  ValueNotifier<int> countNotifier = ValueNotifier(0);
  final ValueNotifierList<String> stList = ValueNotifierList([]);
}
