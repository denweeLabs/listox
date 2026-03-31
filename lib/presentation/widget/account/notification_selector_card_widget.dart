import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app_core/app_core.dart' show AppPermissionType, PermissionsCubit, PermissionsState;
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/presentation/widget/shared/dialogs/app_dialogs.dart';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/ui_kit.dart';

class NotificationSelectorCard extends StatefulWidget {
  const NotificationSelectorCard({super.key});

  static const borderRadius = BorderRadius.all(Radius.circular(24));

  static const _minTime = AppConstants.notificationTimeSelectionMinTime;
  static const _maxTime = AppConstants.notificationTimeSelectionMaxTime;
  static final _totalSteps = (_maxTime.hour - _minTime.hour) * 2; // 30

  static int _timeToStep(DateTime time) {
    final minutes = time.hour * 60 + time.minute - _minTime.hour * 60 - _minTime.minute;
    return (minutes / 30).round().clamp(0, _totalSteps);
  }

  static DateTime _stepToTime(int step) {
    final totalMinutes = _minTime.hour * 60 + _minTime.minute + step * 30;
    return DateTime(1970, 1, 1, totalMinutes ~/ 60, totalMinutes % 60);
  }

  @override
  State<NotificationSelectorCard> createState() => _NotificationSelectorCardState();
}

class _NotificationSelectorCardState extends State<NotificationSelectorCard> {
  Future<void> _onToggleNotifications(
    BuildContext context,
    bool isEnabled,
    bool hasPermission,
  ) async {
    if (hasPermission) {
      context.read<UserPreferencesCubit>().toggleIsNotificationsEnabled();
      return;
    }

    final status = await AppDialogs.checkPermissionDialog(
      context,
      AppPermissionType.notifications,
    );
    if (!status.isAnyGranted) return;
    if (!context.mounted) return;

    // Permission just granted — enable if the preference was off
    if (!isEnabled) {
      context.read<UserPreferencesCubit>().toggleIsNotificationsEnabled();
    }
  }

  void _onSliderChanged(BuildContext context, double value) {
    final cubit = context.read<UserPreferencesCubit>();
    final newStep = value.round();
    final currentStep = NotificationSelectorCard._timeToStep(cubit.state.preferences.notifications.time);
    if (newStep == currentStep) return;
    CoreHapticUtil.light();
    cubit.changeNotificationTime(NotificationSelectorCard._stepToTime(newStep));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserPreferencesCubit, UserPreferencesState>(
      buildWhen: (prev, curr) =>
          prev.preferences.notifications != curr.preferences.notifications,
      builder: (context, state) {
        final notifications = state.preferences.notifications;
        final step = NotificationSelectorCard._timeToStep(notifications.time);
        final timeAsNum = _hourMinuteToFraction(notifications.time);

        return BlocBuilder<PermissionsCubit, PermissionsState>(
          buildWhen: (prev, curr) =>
              prev.isGranted(AppPermissionType.notifications) !=
              curr.isGranted(AppPermissionType.notifications),
          builder: (context, permState) {
            final hasPermission = permState.isGranted(AppPermissionType.notifications);
            final switchChecked = notifications.isEnabled && hasPermission;

            return SurfaceContainer.ellipse(
              elevation: 16,
              color: context.primaryContainer,
              borderRadius: NotificationSelectorCard.borderRadius,
              showBorder: false,
              child: Stack(
                children: [
                  Positioned(
                    right: -18,
                    bottom: -4.0,
                    child: CommonAppRawIcon(
                      path: AppAssets.notificationsLinear,
                      color: context.iconColor.withValues(alpha: .03),
                      size: 108.r,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24.w, 18.h, 0.0, 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                switchChecked ? context.tr(LocaleKeys.account_notifications_enabled).toUpperCase() : context.tr(LocaleKeys.account_notifications_disabled).toUpperCase(),
                                style: h5.copyWith(
                                  color: context.textColor.withValues(alpha: 0.9),
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: hasPermission ? 1.0 : 0.4,
                              child: AppSwitch(
                                isChecked: switchChecked,
                                onTap: () => _onToggleNotifications(
                                  context,
                                  notifications.isEnabled,
                                  hasPermission,
                                ),
                              ),
                            ),
                            18.horizontalSpace,
                          ],
                        ),
                        4.verticalSpace,
                        SizedBox(
                          width: 0.6.sw,
                          child: Text(
                            context.tr(LocaleKeys.account_notifications_description),
                            style: bodyM.copyWith(
                              color: context.textColor.withValues(alpha: 0.25),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        8.verticalSpace,
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: AnimatedNumber(
                                number: timeAsNum,
                                style: h5.copyWith(
                                  color: context.theme.colorScheme.secondary,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.7,
                                ),
                                prefix: timeAsNum < 10 ? '0' : null,
                                decimalSeparator: ':',
                                fractionDigits: 2,
                              ),
                            ),
                            Expanded(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: context.theme.colorScheme.secondary,
                                  inactiveTrackColor: context.theme.colorScheme.secondary.withValues(alpha: .2),
                                  thumbColor: context.theme.colorScheme.secondary,
                                  overlayColor: context.theme.colorScheme.secondary.withValues(alpha: .12),
                                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 9),
                                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 18),
                                  trackHeight: 4.0,
                                ),
                                child: Slider(
                                  min: 0,
                                  max: NotificationSelectorCard._totalSteps.toDouble(),
                                  value: step.toDouble(),
                                  onChanged: (v) => _onSliderChanged(context, v),
                                ),
                              ),
                            ),
                            8.horizontalSpace,
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  double _hourMinuteToFraction(DateTime time) {
    final minuteStr = time.minute.toString().padLeft(2, '0');
    return double.parse('${time.hour}.$minuteStr');
  }
}
