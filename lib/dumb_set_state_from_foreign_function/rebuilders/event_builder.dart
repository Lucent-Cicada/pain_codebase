import 'package:flutter/material.dart';
import 'package:pain_codebase/dumb_set_state_from_foreign_function/controller.dart';

class EventBuilder extends StatefulWidget {

  final Widget Function() rebuildAble;

  const EventBuilder({super.key, required this.rebuildAble});

  @override
  State<EventBuilder> createState() => _EventBuilderState();
}

class _EventBuilderState extends State<EventBuilder> {

  final Controller _controller = Controller();

  @override
  void initState() {
    super.initState();
    _controller.actionBegin(subscribe: _onValueArrived);
  }

  void _onValueArrived() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.rebuildAble();
  }
}
