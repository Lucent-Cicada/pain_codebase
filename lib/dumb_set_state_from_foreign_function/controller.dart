import 'dart:ui';
import 'package:pain_codebase/dumb_set_state_from_foreign_function/data_source.dart';

class Controller {
  /// The Singleton functionality of [Controller] class
  static final Controller _controllerDependency = Controller._internal();
  Controller._internal();
  factory Controller() {
    return _controllerDependency;
  }

  int value = 0;

  void actionBegin({required VoidCallback subscribe}) async {
    value = await DataSource.dataPool();
    subscribe();
  }
}