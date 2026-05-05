import 'package:flutter/material.dart';
import 'package:pain_codebase/dumb_set_state_from_foreign_function/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Controller _controller = Controller();

  @override
  void initState() {
    super.initState();
    _controller.actionBegin(subscribe: _onValueArrived);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text("value = ${_controller.value}.", style: TextStyle(fontSize: 26))),
      ),
    );
  }

  void _onValueArrived() {
    setState(() {});
  }
}
