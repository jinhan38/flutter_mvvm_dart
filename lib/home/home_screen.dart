import 'package:flutter/material.dart';
import 'package:flutter_mvvm_dart/home/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeViewModel _vm = HomeViewModel();

  @override
  void initState() {
    /// ViewModel의 notifyListeners 호출 리스너
    _vm.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    /// 메모리 제거
    _vm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _vm.countUp();
              },
              child: Text(
                "count : ${_vm.count}",
                style: const TextStyle(fontSize: 22),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _vm.addSt();
              },
              child: Text(
                "st : ${_vm.st.toString()}",
                style: const TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
