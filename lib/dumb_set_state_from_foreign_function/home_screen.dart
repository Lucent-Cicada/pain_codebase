import 'package:flutter/material.dart';
import 'package:pain_codebase/dumb_set_state_from_foreign_function/controller.dart';
import 'package:pain_codebase/dumb_set_state_from_foreign_function/rebuilders/event_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EventBuilder(
              rebuildAble: (){
                return Text("value = ${_controller.value}.", style: const TextStyle(fontSize: 26));
              }
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.terrain_sharp)),
            const Text("Widget rebuild test"),
          ],
        ),
      ),
    );
  }
}
