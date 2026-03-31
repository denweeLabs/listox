import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app_core/app_core.dart' show AppPermissionType, UniqueId;
import 'package:listox/core/user_preferences/domain/entity/notification_mode.dart';
import 'package:listox/core/user_preferences/domain/entity/notifications_preferences.dart';
import 'package:listox/di/di.dart';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';
import 'package:listox/presentation/page/account/about_app/about_app_page.dart';
import 'package:listox/presentation/page/account/change_language/change_language_page.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/shared/router/root_router.dart';
import 'package:listox/presentation/widget/shared/dialogs/app_dialogs.dart';
import 'package:listox/presentation/shared/utils/launcher_util.dart';
import 'package:listox/presentation/widget/account/notification_selector_card_widget.dart';
import 'package:listox/presentation/widget/account/premium_overlay_card_widget.dart';
import 'package:ui_kit/ui_kit.dart' hide CoreDialogsUtil, CoreLauncherUtil;

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  static const routeName = 'AccountPage';

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _controller = SubpagesController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonPopScope(
      onWillPop: _pop,
      child: CommonScaffold(
        body: CommonSubpagesNavigator(
          controller: _controller,
          home: _AccountHome(_pop),
        ),
      ),
    );
  }

  void _pop() {
    _controller.goBackOrPop(
      () => Navigator.of(context).pushReplacementNamed(Routes.home),
    );
  }
}

class _AccountHome extends StatelessWidget {
  const _AccountHome(this.onPop);

  final VoidCallback onPop;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(
        24.w,
        context.topPadding + 24.h,
        24.w,
        context.bottomPadding + 42.h,
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(context.tr(LocaleKeys.account_title), style: h0.copyWith(color: context.textColor)),
            AppBackButton(
              onTap: onPop,
              type: AppBackButtonType.cross,
              brightness: AppIconButtonBrightness.solid,
              size: 20,
            ),
          ],
        ),
        24.verticalSpace,
        const PremiumOverlayCard(),
        48.verticalSpace,
        _buildNotificationsPreferences(context),
        42.verticalSpace,
        _buildPreferencesSection(context),
        42.verticalSpace,
        _buildThemeModeSection(context),
        48.verticalSpace,
        _buildThemeColorationSection(context),
        42.verticalSpace,
        _buildMoreSection(context),
      ],
    );
  }

  Widget _buildNotificationsPreferences(BuildContext context) {
    return BlocSelector<
      UserPreferencesCubit,
      UserPreferencesState,
      NotificationsPreferences
    >(
      selector: (state) => state.preferences.notifications,
      builder: (context, notifications) => AccountSection(
        verticalSpacing: 12,
        titlePadding: EdgeInsets.symmetric(horizontal: 6.w),
        childrenPadding: EdgeInsets.symmetric(horizontal: 4.w),
        title: context.tr(LocaleKeys.account_section_notifications),
        suffixText: () {
          if (notifications.notificationMode == NotificationMode.auto) {
            return context.tr(LocaleKeys.notifications_mode_auto);
          }
          final weekdayKeys = {
            1: LocaleKeys.weekdays_m_mon,
            2: LocaleKeys.weekdays_m_tue,
            3: LocaleKeys.weekdays_m_wed,
            4: LocaleKeys.weekdays_m_thu,
            5: LocaleKeys.weekdays_m_fri,
            6: LocaleKeys.weekdays_m_sat,
            7: LocaleKeys.weekdays_m_sun,
          };
          final labels = notifications.manualNotificationDays
              .map((d) => weekdayKeys[d]?.tr(context: context) ?? '')
              .where((l) => l.isNotEmpty);
          return labels.join(', ');
        }(),
        onTap: () => _onNotificationsModeTap(context),
        children: [const NotificationSelectorCard()],
      ),
    );
  }

  Widget _buildPreferencesSection(BuildContext context) {
    final selectedLanguageName = AppConstants.languages
        .firstWhereOrNull((language) => language.locale == context.locale)
        ?.nativeName;

    return AccountSection(
      verticalSpacing: 12,
      titlePadding: EdgeInsets.symmetric(horizontal: 6.w),
      childrenPadding: EdgeInsets.symmetric(horizontal: 6.w),
      title: context.tr(LocaleKeys.account_section_preferences),
      children: [
        AccountHorizontalTile.valueMore(
          iconPath: AppAssets.globeLinear,
          title: context.tr(LocaleKeys.account_language_title),
          subtitle: context.tr(LocaleKeys.account_language_subtitle),
          value: selectedLanguageName ?? context.locale.toString(),
          onTap: () => _onLanguage(context),
        ),
        const AccountItemsDivider(),
        BlocSelector<UserPreferencesCubit, UserPreferencesState, bool>(
          selector: (state) => state.preferences.misc.isHapticsEnabled,
          builder: (context, isHapticsEnabled) => AccountHorizontalTile.sSwitch(
            iconPath: AppAssets.cdLinear,
            title: context.tr(LocaleKeys.account_haptics_title),
            subtitle: context.tr(LocaleKeys.account_haptics_subtitle),
            switchValue: isHapticsEnabled,
            onTap: () => _onHaptics(context),
          ),
        ),
      ],
    );
  }

  Widget _buildThemeModeSection(BuildContext context) {
    return AccountSection(
      title: context.tr(LocaleKeys.account_section_theme),
      titlePadding: EdgeInsets.symmetric(horizontal: 6.w),
      childrenPadding: EdgeInsets.symmetric(horizontal: 6.w),
      children: [
        BlocSelector<UserPreferencesCubit, UserPreferencesState, ThemeMode>(
          selector: (state) => state.preferences.theme.mode,
          builder: (context, mode) => ThemeModeOverviewSelector(
            currentSelectedMode: mode,
            onChanged: getIt<UserPreferencesCubit>().changeThemeMode,
            labels: {
              ThemeMode.system: context.tr(LocaleKeys.account_theme_system),
              ThemeMode.light: context.tr(LocaleKeys.account_theme_light),
              ThemeMode.dark: context.tr(LocaleKeys.account_theme_dark),
            },
          ),
        ),
      ],
    );
  }

  Widget _buildThemeColorationSection(BuildContext context) {
    return AccountSection(
      title: context.tr(LocaleKeys.account_section_colorations),
      titlePadding: EdgeInsets.symmetric(horizontal: 6.w),
      childrenPadding: EdgeInsets.symmetric(horizontal: 6.w),
      children: [
        BlocSelector<UserPreferencesCubit, UserPreferencesState, UniqueId>(
          selector: (state) => state.preferences.theme.colorationId,
          builder: (context, id) => ColorationOverviewSelector(
            selectedColorationId: id.value,
            onChanged: (id) => getIt<UserPreferencesCubit>()
                .changeThemeColoration(UniqueId.fromValue(id)),
          ),
        ),
      ],
    );
  }

  Widget _buildMoreSection(BuildContext context) {
    return AccountSection(
      verticalSpacing: 12,
      titlePadding: EdgeInsets.symmetric(horizontal: 6.w),
      childrenPadding: EdgeInsets.symmetric(horizontal: 6.w),
      title: context.tr(LocaleKeys.account_section_more),
      children: [
        AccountHorizontalTile.more(
          onTap: () => _onAboutAppTap(context),
          iconPath: AppAssets.mobileLinear,
          title: context.tr(LocaleKeys.account_about_app),
        ),
        const AccountItemsDivider(),
        AccountHorizontalTile.more(
          onTap: () => LauncherUtil.launchLanding(context),
          iconPath: AppAssets.noteLinear,
          title: context.tr(LocaleKeys.account_privacy_terms),
        ),
        const AccountItemsDivider(),
        AccountHorizontalTile.more(
          onTap: () => LauncherUtil.launchSupportEmail(context),
          iconPath: AppAssets.messageQuestionLinear,
          title: context.tr(LocaleKeys.account_contact_support),
        ),
      ],
    );
  }

  Future<void> _onNotificationsModeTap(BuildContext context) async {
    final cubit = context.read<UserPreferencesCubit>();

    final permissionStatus = await AppDialogs.checkPermissionDialog(
      context,
      AppPermissionType.notifications,
    );
    if (!permissionStatus.isAnyGranted) return;
    if (!context.mounted) return;

    final result = await AppDialogs.showNotificationModeDialog(
      context,
      cubit.state.preferences.notifications,
    );
    if (result == null) return;

    cubit.changeNotificationsModeData((result.days, result.mode));
  }

  void _onLanguage(BuildContext context) {
    final controller = SubpagesScope.of(context);
    final page = ChangeLanguagePage(onBack: controller.goHome);
    controller.navigateTo(page);
  }

  void _onHaptics(BuildContext context) {
    context.read<UserPreferencesCubit>().toggleIsHapticsEnabled();
  }

  void _onAboutAppTap(BuildContext context) {
    final controller = SubpagesScope.of(context);
    final page = AboutAppPage(onBack: controller.goHome);
    controller.navigateTo(page);
  }
}
