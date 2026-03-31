import 'package:flutter/material.dart';

@immutable
class AppLanguage {
  final Locale locale;
  final String nativeName;
  final String englishName;

  const AppLanguage({
    required this.locale,
    required this.nativeName,
    required this.englishName,
  });
}