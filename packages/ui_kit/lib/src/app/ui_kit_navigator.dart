import 'package:flutter/material.dart';

class UiKitNavigator {
  static final key = GlobalKey<NavigatorState>();
  static BuildContext get context => key.currentState!.context;
}
