import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/repo/grocery_repo.dart';

@LazySingleton()
class ClearGrocerySelectionUseCase {
  final GroceryRepo _groceryRepo;

  const ClearGrocerySelectionUseCase(this._groceryRepo);

  Future<void> execute() => _groceryRepo.clearAllSelections();
}
