import 'package:app_core/app_core.dart';
import 'package:listox/presentation/bloc/groceries/groceries_cubit.dart';
import 'package:listox/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';

class RootBlocProviders extends StatelessWidget {
  const RootBlocProviders({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ConnectivityCubit(),
          lazy: false,
        ),
        BlocProvider(
          create: (_) => getIt<GroceriesCubit>()..init(),
          lazy: false,
        ),
        BlocProvider(
          create: (_) => getIt<UserPreferencesCubit>(),
        ),
      ],
      child: child,
    );
  }
}
