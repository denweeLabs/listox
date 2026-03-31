import 'dart:async';
import 'dart:developer';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:app_core/app_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:listox/core/notifications/domain/service/notification_scheduler_service.dart';
import 'package:listox/core/user_preferences/domain/repo/user_preferences_repo.dart';
import 'package:listox/presentation/shared/localization/codegen_loader.g.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/presentation/page/app/app.dart';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';
import 'package:ui_kit/ui_kit.dart' show UiKitConfig, CoreHapticUtil, CoreMaterialApp;
import 'package:listox/di/di.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void run(String env) {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    WakelockPlus.enable();

    await configureDependencies(env);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final isOnboarding = await CoreMaterialApp.readIsOnboarding(
      envPrefix: getIt<String>(instanceName: 'ENV_PREFIX'),
    );
    if (!isOnboarding) {
      getIt<NotificationSchedulerService>().initialize();
    }

    UiKitConfig.configure(
      latinFontFamily: 'Quicksand',
      cyrillicFontFamily: 'Manrope',
      themeColorations: AppConstants.themeColorations,
    );
    CoreHapticUtil.configure(
      isEnabled: () => getIt<UserPreferencesCubit>().state.preferences.misc.isHapticsEnabled,
    );
    AnimateDoConfig.configure(hapticFeedback: CoreHapticUtil.light);

    FlutterError.onError = _recordFlutterError;
    PlatformDispatcher.instance.onError = _recordZoneError;

    await EasyLocalization.ensureInitialized();
    final preferencesFailureOrSuccess = getIt<UserPreferencesRepo>().getPrefrencesLocal();
    final preferences = preferencesFailureOrSuccess.foldNullable();
    final startLocale = preferences?.language;
    if (startLocale != null) {
      Intl.systemLocale = startLocale.languageCode;
      Intl.defaultLocale = startLocale.languageCode;
    }

    runApp(
      RootRestorationScope(
        restorationId: 'root',
        child: EasyLocalization(
          useOnlyLangCode: true,
          saveLocale: false,
          startLocale: startLocale,
          ignorePluralRules: false,
          supportedLocales: AppConstants.supportedLocales,
          fallbackLocale: AppConstants.fallbackLocale,
          path: AppConstants.localesPath,
          assetLoader: const CodegenLoader(),
          child: const MyApp(),
        ),
      ),
    );
  }, _recordZoneError);
}

void _recordFlutterError(FlutterErrorDetails details) {
  debugPrint('_recordFlutterError: ${details.toString()}');
  FirebaseCrashlytics.instance.recordFlutterError(details);
}

bool _recordZoneError(Object error, StackTrace? stack) {
  debugPrint('_recordZoneError: $error, $stack');
  log('Uncaught error', error: error, stackTrace: stack);
  FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  return true;
}
