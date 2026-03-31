import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/core/shopping_pattern/data/model/shopping_pattern_dto.dart';
import 'package:listox/core/shopping_pattern/domain/source/shopping_pattern_local_source.dart';
import 'package:listox/di/server_module.dart';

@LazySingleton(as: ShoppingPatternLocalSource)
class ShoppingPatternLocalSourceImpl implements ShoppingPatternLocalSource {
  final LocalStorage _localStorage;
  final String _envPrefix;

  const ShoppingPatternLocalSourceImpl(
    this._localStorage,
    @ENV_PREFIX this._envPrefix,
  );

  String get _key => '${_envPrefix}SHOPPING_PATTERN';

  @override
  ShoppingPatternDto? get() {
    final jsonString = _localStorage.getString(key: _key);
    if (jsonString != null && jsonString.isNotEmpty) {
      final data = jsonDecode(jsonString) as Map<String, dynamic>?;
      if (data != null) return ShoppingPatternDto.fromJson(data);
    }
    return null;
  }

  @override
  Future<void> store(ShoppingPatternDto dto) async {
    final jsonString = jsonEncode(dto.toJson());
    await _localStorage.putString(key: _key, value: jsonString);
  }
}
