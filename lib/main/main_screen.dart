import 'package:flutter/material.dart';
import 'package:flutter_mvvm_dart/home/home_screen.dart';
import 'package:flutter_mvvm_dart/notifier/notifier_view_model.dart';

import '../notifier/notifier_screen.dart';
import '../second/second_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter MVVM only Dart"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _button("HomeScreen", const HomeScreen()),
            ValueListenableBuilder(
              valueListenable: NotifierViewModel().countNotifier,
              builder: (context, value, child) {
                return _button(
                  "NotifierScreen countNotifier $value",
                  const NotifierScreen(),
                );
              },
            ),
            _button("SecondScreen", SecondScreen()),
          ],
        ),
      ),
    );
  }

  Widget _button(String buttonText, Widget widget) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        );
      },
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
