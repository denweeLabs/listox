import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listox/core/user_preferences/domain/entity/preferences_failure.dart';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';
import 'package:listox/presentation/page/app/root_listeners_handlers.dart';

class RootBlocListeners extends StatefulWidget {
  const RootBlocListeners({super.key, required this.child});

  final Widget child;

  @override
  State<RootBlocListeners> createState() => _RootBlocListenersState();
}

class _RootBlocListenersState extends State<RootBlocListeners>
    with WidgetsBindingObserver, RootBlocListenersHandlers {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) processAppResume();
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
    listeners: [
      BlocListener<UserPreferencesCubit, UserPreferencesState>(
        listenWhen: _userPreferencesListener,
        listener: (_, __) {},
      ),
    ],
    child: widget.child,
  );

  bool _userPreferencesListener(
    UserPreferencesState p,
    UserPreferencesState c,
  ) {
    final isFailure = p.failure != c.failure && c.failure.isSome();

    if (isFailure) {
      final failure = c.failure.toNullable()!;
      processErrorSnackbar(messageProvider: failure.errorMessage);
    }

    final oldLanguage = p.preferences.language.languageCode;
    final newLanguage = c.preferences.language.languageCode;
    final languageChanged = oldLanguage != newLanguage;

    if (languageChanged) {
      context.setLocale(Locale(newLanguage));
      Intl.defaultLocale = newLanguage;
    }

    return false;
  }
}
