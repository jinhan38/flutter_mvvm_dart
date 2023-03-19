import 'package:flutter/material.dart';
import 'package:flutter_mvvm_dart/second/second_view_model.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);
  final SecondViewModel _vm = SecondViewModel();

  @override
  Widget build(BuildContext context) {
    /// _vm.addListener 대신 AnimatedBuilder로 notifyListeners 호출 체크
    return AnimatedBuilder(
      animation: _vm,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("SecondScreen"),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "카운트 : ${_vm.count}",
                  style: const TextStyle(fontSize: 22),
                ),
                ElevatedButton(
                  onPressed: () {
                    _vm.countUp();
                  },
                  child: const Text(
                    "Count up",
                    style: TextStyle(fontSize: 22),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
