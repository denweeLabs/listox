// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_core/app_core.dart' as _i130;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i163;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/groceries/data/repo/grocery_repo_impl.dart' as _i782;
import '../core/groceries/data/repo/grocery_templates_repo_impl.dart' as _i484;
import '../core/groceries/data/source/grocery_local_source_impl.dart' as _i298;
import '../core/groceries/data/source/grocery_templates_local_source_impl.dart'
    as _i330;
import '../core/groceries/domain/repo/grocery_repo.dart' as _i505;
import '../core/groceries/domain/repo/grocery_templates_repo.dart' as _i94;
import '../core/groceries/domain/source/grocery_local_source.dart' as _i448;
import '../core/groceries/domain/source/grocery_templates_local_source.dart'
    as _i657;
import '../core/groceries/domain/use_case/add_custom_grocery_use_case.dart'
    as _i475;
import '../core/groceries/domain/use_case/add_quick_grocery_use_case.dart'
    as _i134;
import '../core/groceries/domain/use_case/clear_grocery_selection_use_case.dart'
    as _i643;
import '../core/groceries/domain/use_case/confirm_purchase_use_case.dart'
    as _i327;
import '../core/groceries/domain/use_case/delete_grocery_use_case.dart'
    as _i366;
import '../core/groceries/domain/use_case/get_categorized_groceries_use_case.dart'
    as _i882;
import '../core/groceries/domain/use_case/get_grocery_templates_use_case.dart'
    as _i324;
import '../core/groceries/domain/use_case/save_selected_groceries_use_case.dart'
    as _i414;
import '../core/groceries/domain/use_case/update_grocery_use_case.dart'
    as _i898;
import '../core/notifications/data/service/notification_scheduler_service_impl.dart'
    as _i826;
import '../core/notifications/domain/service/notification_scheduler_service.dart'
    as _i403;
import '../core/notifications/domain/use_case/schedule_notifications_use_case.dart'
    as _i134;
import '../core/shopping_pattern/data/repo/shopping_pattern_repo_impl.dart'
    as _i320;
import '../core/shopping_pattern/data/source/local/shopping_pattern_local_source_impl.dart'
    as _i766;
import '../core/shopping_pattern/domain/repo/shopping_pattern_repo.dart'
    as _i454;
import '../core/shopping_pattern/domain/source/shopping_pattern_local_source.dart'
    as _i268;
import '../core/user_preferences/data/repo/user_preferences_repo_impl.dart'
    as _i917;
import '../core/user_preferences/data/source/local/user_preferences_local_source_impl.dart'
    as _i923;
import '../core/user_preferences/domain/repo/user_preferences_repo.dart'
    as _i421;
import '../core/user_preferences/domain/source/user_preferences_local_source.dart'
    as _i357;
import '../db/daos/groceries_dao.dart' as _i421;
import '../db/database.dart' as _i783;
import '../presentation/bloc/add_custom_grocery/add_custom_grocery_cubit.dart'
    as _i370;
import '../presentation/bloc/groceries/groceries_cubit.dart' as _i76;
import '../presentation/bloc/search_groceries/search_groceries_cubit.dart'
    as _i29;
import '../presentation/bloc/select_groceries/select_groceries_cubit.dart'
    as _i612;
import '../presentation/bloc/user_preferences/user_preferences_cubit.dart'
    as _i565;
import '../presentation/shared/utils/redirect_util.dart' as _i1037;
import 'plugin_module.dart' as _i697;
import 'server_module.dart' as _i131;

const String _dev = 'dev';
const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final pluginModule = _$PluginModule();
  final serverModule = _$ServerModule();
  await gh.factoryAsync<_i130.LocalStorage>(
    () => pluginModule.provideLocalStorage(),
    preResolve: true,
  );
  await gh.factoryAsync<_i130.DeviceInfoProvider>(
    () => pluginModule.provideDeviceInfoProvider(),
    preResolve: true,
  );
  gh.lazySingleton<_i783.AppLocalDatabase>(() => _i783.AppLocalDatabase());
  gh.lazySingleton<_i163.FlutterLocalNotificationsPlugin>(
    () => pluginModule.provideFlutterLocalNotifications(),
  );
  gh.lazySingleton<_i1037.RedirectUtil>(() => _i1037.RedirectUtil());
  await gh.factoryAsync<_i130.DeviceInfo>(
    () => pluginModule.provideDeviceDetails(gh<_i130.DeviceInfoProvider>()),
    preResolve: true,
  );
  await gh.factoryAsync<_i130.AppPackageInfo>(
    () => pluginModule.provideAppPackageInfo(gh<_i130.DeviceInfoProvider>()),
    preResolve: true,
  );
  gh.lazySingleton<_i403.NotificationSchedulerService>(
    () => _i826.NotificationSchedulerServiceImpl(
      gh<_i163.FlutterLocalNotificationsPlugin>(),
    ),
  );
  gh.factoryParam<_i370.AddCustomGroceryCubit, _i130.UniqueId?, String?>(
    (initialCategoryId, initialIconPath) =>
        _i370.AddCustomGroceryCubit(initialCategoryId, initialIconPath),
  );
  gh.lazySingleton<String>(
    () => serverModule.devEnvPrefix(),
    instanceName: 'ENV_PREFIX',
    registerFor: {_dev},
  );
  gh.lazySingleton<_i421.GroceriesDao>(
    () => _i421.GroceriesDao(gh<_i783.AppLocalDatabase>()),
  );
  gh.lazySingleton<String>(
    () => serverModule.provideEnvDev(),
    instanceName: 'ENV',
    registerFor: {_dev},
  );
  gh.lazySingleton<String>(
    () => serverModule.provideEnvProd(),
    instanceName: 'ENV',
    registerFor: {_prod},
  );
  gh.lazySingleton<_i448.GroceryLocalSource>(
    () => _i298.GroceryLocalSourceImpl(gh<_i421.GroceriesDao>()),
  );
  gh.lazySingleton<String>(
    () => serverModule.prodEnvPrefix(),
    instanceName: 'ENV_PREFIX',
    registerFor: {_prod},
  );
  gh.lazySingleton<_i357.UserPreferencesLocalSource>(
    () => _i923.UserPreferencesLocalSourceImpl(
      gh<_i130.LocalStorage>(),
      gh<String>(instanceName: 'ENV_PREFIX'),
    ),
  );
  gh.lazySingleton<_i268.ShoppingPatternLocalSource>(
    () => _i766.ShoppingPatternLocalSourceImpl(
      gh<_i130.LocalStorage>(),
      gh<String>(instanceName: 'ENV_PREFIX'),
    ),
  );
  gh.lazySingleton<_i657.GroceryTemplatesLocalSource>(
    () => _i330.GroceryTemplatesLocalSourceImpl(
      gh<_i130.LocalStorage>(),
      gh<String>(instanceName: 'ENV_PREFIX'),
    ),
  );
  gh.lazySingleton<_i94.GroceryTemplatesRepo>(
    () =>
        _i484.GroceryTemplatesRepoImpl(gh<_i657.GroceryTemplatesLocalSource>()),
  );
  gh.lazySingleton<_i454.ShoppingPatternRepo>(
    () => _i320.ShoppingPatternRepoImpl(gh<_i268.ShoppingPatternLocalSource>()),
  );
  gh.lazySingleton<_i505.GroceryRepo>(
    () => _i782.GroceryRepoImpl(gh<_i448.GroceryLocalSource>()),
  );
  gh.lazySingleton<_i327.ConfirmGroceriesPurchaseUseCase>(
    () => _i327.ConfirmGroceriesPurchaseUseCase(gh<_i505.GroceryRepo>()),
  );
  gh.lazySingleton<_i366.DeleteGroceryUseCase>(
    () => _i366.DeleteGroceryUseCase(gh<_i505.GroceryRepo>()),
  );
  gh.lazySingleton<_i898.UpdateGroceryUseCase>(
    () => _i898.UpdateGroceryUseCase(gh<_i505.GroceryRepo>()),
  );
  gh.lazySingleton<_i421.UserPreferencesRepo>(
    () => _i917.UserPreferencesRepoImpl(gh<_i357.UserPreferencesLocalSource>()),
  );
  gh.lazySingleton<_i475.AddCustomGroceryUseCase>(
    () => _i475.AddCustomGroceryUseCase(gh<_i94.GroceryTemplatesRepo>()),
  );
  gh.lazySingleton<_i324.GetGroceryTemplatesUseCase>(
    () => _i324.GetGroceryTemplatesUseCase(gh<_i94.GroceryTemplatesRepo>()),
  );
  gh.lazySingleton<_i134.AddQuickGroceryUseCase>(
    () => _i134.AddQuickGroceryUseCase(gh<_i505.GroceryRepo>()),
  );
  gh.lazySingleton<_i134.ScheduleNotificationsUseCase>(
    () => _i134.ScheduleNotificationsUseCase(
      gh<_i421.UserPreferencesRepo>(),
      gh<_i454.ShoppingPatternRepo>(),
      gh<_i403.NotificationSchedulerService>(),
    ),
  );
  gh.lazySingleton<_i643.ClearGrocerySelectionUseCase>(
    () => _i643.ClearGrocerySelectionUseCase(gh<_i505.GroceryRepo>()),
  );
  gh.lazySingleton<_i882.GetCategorizedGroceriesUseCase>(
    () => _i882.GetCategorizedGroceriesUseCase(gh<_i505.GroceryRepo>()),
  );
  gh.lazySingleton<_i414.SaveSelectedGroceriesUseCase>(
    () => _i414.SaveSelectedGroceriesUseCase(gh<_i505.GroceryRepo>()),
  );
  gh.factory<_i29.SearchGroceriesCubit>(
    () => _i29.SearchGroceriesCubit(gh<_i324.GetGroceryTemplatesUseCase>()),
  );
  gh.lazySingleton<_i76.GroceriesCubit>(
    () => _i76.GroceriesCubit(
      gh<_i882.GetCategorizedGroceriesUseCase>(),
      gh<_i327.ConfirmGroceriesPurchaseUseCase>(),
      gh<_i898.UpdateGroceryUseCase>(),
      gh<_i366.DeleteGroceryUseCase>(),
      gh<_i134.ScheduleNotificationsUseCase>(),
      gh<_i134.AddQuickGroceryUseCase>(),
      gh<_i643.ClearGrocerySelectionUseCase>(),
    ),
  );
  gh.lazySingleton<_i565.UserPreferencesCubit>(
    () => _i565.UserPreferencesCubit(
      gh<_i421.UserPreferencesRepo>(),
      gh<_i134.ScheduleNotificationsUseCase>(),
    ),
  );
  gh.factoryParam<_i612.SelectGroceriesCubit, Set<_i130.UniqueId>?, dynamic>(
    (selectedIds, _) => _i612.SelectGroceriesCubit(
      selectedIds,
      gh<_i324.GetGroceryTemplatesUseCase>(),
      gh<_i475.AddCustomGroceryUseCase>(),
      gh<_i414.SaveSelectedGroceriesUseCase>(),
      gh<_i882.GetCategorizedGroceriesUseCase>(),
    ),
  );
  return getIt;
}

class _$PluginModule extends _i697.PluginModule {}

class _$ServerModule extends _i131.ServerModule {}
