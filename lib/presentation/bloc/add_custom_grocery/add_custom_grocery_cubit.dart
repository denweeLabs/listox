import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/presentation/shared/constants/groceries_constants.dart';

part 'add_custom_grocery_state.dart';
part 'add_custom_grocery_cubit.freezed.dart';

@Injectable()
class AddCustomGroceryCubit extends Cubit<AddCustomGroceryState> {
  AddCustomGroceryCubit(
    @factoryParam UniqueId? initialCategoryId,
    @factoryParam String? initialIconPath,
  ) : super(
        AddCustomGroceryState(
          selectedCategoryId: initialCategoryId ?? categoryOtherId,
          selectedIcon: initialIconPath ?? '',
        ),
      );

  void selectIcon(String iconPath) => emit(state.copyWith(selectedIcon: iconPath));

  void selectCategory(UniqueId categoryId) =>
      emit(state.copyWith(selectedCategoryId: categoryId));

  GroceryTemplate createGrocery({
    required String name,
    required double consumptionPeriodDays,
  }) {
    return GroceryTemplate(
      id: UniqueId.generate(),
      categoryId: state.selectedCategoryId,
      name: name,
      consumptionPeriodDays: consumptionPeriodDays,
      icon: state.selectedIcon,
    );
  }

  Grocery createUpdatedGrocery({
    required Grocery initialGrocery,
    required String name,
    required double consumptionPeriodDays,
    required String icon,
  }) {
    return initialGrocery.copyWith(
      name: name,
      icon: icon,
      consumptionPeriodDays: consumptionPeriodDays,
      updatedAt: DateTime.now(),
    );
  }
}
