import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';

enum GroceryFailure {
  notFound,
  localStorage,
  unexpected;
}

extension GroceryFailureX on GroceryFailure {
  String errorMessage(BuildContext context) {
    switch (this) {
      case GroceryFailure.notFound:
        return context.tr(LocaleKeys.error_message_grocery_not_found);
      case GroceryFailure.localStorage:
        return context.tr(LocaleKeys.error_message_grocery_storage);
      default:
        return context.tr(LocaleKeys.error_message_common_unexpected);
    }
  }
}
