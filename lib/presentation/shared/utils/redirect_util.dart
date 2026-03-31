import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class RedirectUtil {
  static const scheme = 'listox';

  Future<void> execute(Uri link) async {
    debugPrint('RedirectUtil execute: $link');
  }
}
