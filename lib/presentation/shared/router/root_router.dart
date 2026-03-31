import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/di/di.dart';
import 'package:listox/presentation/bloc/add_custom_grocery/add_custom_grocery_cubit.dart';
import 'package:listox/presentation/bloc/search_groceries/search_groceries_cubit.dart';
import 'package:listox/presentation/bloc/select_groceries/select_groceries_cubit.dart';
import 'package:listox/presentation/page/account/account/account_page.dart';
import 'package:listox/presentation/page/edit_grocery/edit_grocery_page.dart';
import 'package:listox/presentation/page/home/home_page.dart';
import 'package:listox/presentation/page/add_custom_grocery/add_custom_grocery_page.dart';
import 'package:listox/presentation/page/select_groceries/select_groceries_page.dart';

class Routes {
  static const home = HomePage.routeName;
  static const editGrocery = EditGroceryPage.routeName;
  static const selectGroceries = SelectGroceriesPage.routeName;
  static const addCustomGrocery = AddCustomGroceryPage.routeName;
  static const account = AccountPage.routeName;
}

Route<dynamic>? rootRouteFactory(RouteSettings settings) {
  switch (settings.name) {
    case Routes.home:
      return FadeSlideupPageRouteBuilder<void>(
        settings: settings,
        builder: (_) => const HomePage(),
      );

    case Routes.editGrocery:
      final args = settings.arguments as EditGroceryPageArgs;

      return FadeSlideupPageRouteBuilder<Grocery?>(
        settings: settings,
        builder: (_) => BlocProvider(
          create: (_) => getIt<AddCustomGroceryCubit>(param2: args.grocery.icon),
          child: EditGroceryPage(args: args),
        ),
      );

    case Routes.selectGroceries:
      final args = (settings.arguments as SelectGroceriesPageArgs?) ??
          const SelectGroceriesPageArgs();
    
      return FadeSlideupPageRouteBuilder<List<GroceryTemplate>?>(
        settings: settings,
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<SelectGroceriesCubit>(param1: args.selectedGroceryIds)),
            BlocProvider(create: (_) => getIt<SearchGroceriesCubit>()),
          ],
          child: SelectGroceriesPage(args: args),
        ),
      );

    case Routes.addCustomGrocery:
      final args = settings.arguments as AddCustomGroceryPageArgs;

      return FadeSlideupPageRouteBuilder<GroceryTemplate?>(
        settings: settings,
        builder: (_) => BlocProvider(
          create: (_) => getIt<AddCustomGroceryCubit>(
            param1: args.initialCategoryId,
          ),
          child: AddCustomGroceryPage(args: args),
        ),
      );

    case Routes.account:
      return FadeSlideupPageRouteBuilder<void>(
        settings: settings,
        builder: (_) => const AccountPage(),
      );

    default:
      throw 'Root Unknown route ${settings.name}';
  }
}
