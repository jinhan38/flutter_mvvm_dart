import 'package:flutter/material.dart';
import 'package:flutter_mvvm_dart/notifier/notifier_view_model.dart';

class NotifierScreen extends StatefulWidget {
  const NotifierScreen({Key? key}) : super(key: key);

  @override
  State<NotifierScreen> createState() => _NotifierScreenState();
}

class _NotifierScreenState extends State<NotifierScreen> {
  final NotifierViewModel _vm = NotifierViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NotifierScreen"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: _vm.countNotifier,
              builder: (context, value, child) {
                return Text(
                  "countNotifier : $value",
                  style: const TextStyle(fontSize: 22),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                _vm.countNotifier.value++;
              },
              child: const Text("countNotifier up"),
            ),
            const SizedBox(height: 30),
            ValueListenableBuilder(
              valueListenable: _vm.stList,
              builder: (context, value, child) {
                return Text(
                  "ValueNotifierList : ${value.toString()}",
                  style: const TextStyle(fontSize: 22),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                _vm.stList.value = [
                  ..._vm.stList.value,
                  DateTime.now().toString(),
                ];
              },
              child: const Text("ValueNotifierList add"),
            ),
            ElevatedButton(
              onPressed: () {
                if (_vm.stList.value.isEmpty) return;
                _vm.stList.removeAt(0);
                // _vm.stList.removeLast();
              },
              child: const Text("ValueNotifierList remove"),
            ),
          ],
        ),
      ),
    );
  }
}
