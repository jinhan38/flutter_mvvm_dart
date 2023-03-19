import 'package:flutter/cupertino.dart';

import '../value_notifier_list.dart';

class NotifierViewModel with ChangeNotifier {
  ValueNotifier<int> countNotifier = ValueNotifier(0);
  final ValueNotifierList<String> stList = ValueNotifierList([]);
}
