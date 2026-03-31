import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/data/model/grocery_template_dto.dart';
import 'package:listox/core/groceries/domain/source/grocery_templates_local_source.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/di/server_module.dart';

@LazySingleton(as: GroceryTemplatesLocalSource)
class GroceryTemplatesLocalSourceImpl implements GroceryTemplatesLocalSource {
  final LocalStorage _localStorage;
  final String _envPrefix;

  const GroceryTemplatesLocalSourceImpl(
    this._localStorage,
    @ENV_PREFIX this._envPrefix,
  );

  String get _customItemsKey => '${_envPrefix}CUSTOM_ITEMS';
  
  @override
  List<GroceryTemplateDto> getCustomItems() {
    final jsonString = _localStorage.getString(key: _customItemsKey);
    if (jsonString != null && jsonString.isNotEmpty) {
      final json = (jsonDecode(jsonString) as List<dynamic>).cast<Map<String, dynamic>>();
      return json.map(GroceryTemplateDto.fromJson).toList();
    }
    return const <GroceryTemplateDto>[];
  }

  @override
  Future<void> storeCustomItem(GroceryTemplateDto item) async {
    final currentItems = [...getCustomItems(), item];
    final json = currentItems.map((e) => e.toJson()).toList();
    final value = jsonEncode(json);
    await _localStorage.putString(key: _customItemsKey, value: value);
  }
}
