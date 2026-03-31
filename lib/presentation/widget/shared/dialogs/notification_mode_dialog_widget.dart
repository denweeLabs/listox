import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/core/user_preferences/domain/entity/notification_mode.dart';
import 'package:listox/core/user_preferences/domain/entity/notifications_preferences.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/ui_kit.dart';

typedef NotificationModeResult = ({NotificationMode mode, List<int> days});

class NotificationModeDialog extends StatefulWidget {
  const NotificationModeDialog({super.key, required this.current});

  static const routeName = 'NotificationModeDialog';

  final NotificationsPreferences current;

  @override
  State<NotificationModeDialog> createState() => _NotificationModeDialogState();
}

class _NotificationModeDialogState extends State<NotificationModeDialog> {
  late NotificationMode _selectedMode;
  late List<int> _selectedDays;

  List<({int day, String label})> _weekdays(BuildContext context) => [
    (day: 1, label: LocaleKeys.weekdays_s_mon.tr()),
    (day: 2, label: LocaleKeys.weekdays_s_tue.tr()),
    (day: 3, label: LocaleKeys.weekdays_s_wed.tr()),
    (day: 4, label: LocaleKeys.weekdays_s_thu.tr()),
    (day: 5, label: LocaleKeys.weekdays_s_fri.tr()),
    (day: 6, label: LocaleKeys.weekdays_s_sat.tr()),
    (day: 7, label: LocaleKeys.weekdays_s_sun.tr()),
  ];

  @override
  void initState() {
    super.initState();
    _selectedMode = widget.current.notificationMode;
    _selectedDays = List.from(widget.current.manualNotificationDays);
  }

  void _toggleDay(int day) {
    setState(() {
      if (_selectedDays.contains(day)) {
        _selectedDays.remove(day);
      } else {
        _selectedDays.add(day);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CoreDialog.confirmationWBody(
      dialogWidth: 0.84,
      decorationIcon: AppAssets.notificationsLinear,
      cancelButton: CoreDialogButton.cross(Navigator.of(context).pop),
      okButton: CoreDialogButton(AppAssets.checkmarkLinear, _pop),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Text(
              context.tr(LocaleKeys.dialog_notification_mode_title),
              style: dialogTitle.copyWith(color: context.textColor),
              textAlign: TextAlign.center,
            ),
            24.verticalSpace,
            _ModeOption(
              label: context.tr(LocaleKeys.dialog_notification_mode_auto_label).toUpperCase(),
              description: context.tr(LocaleKeys.dialog_notification_mode_auto_description),
              isSelected: _selectedMode == NotificationMode.auto,
              onTap: () =>
                  setState(() => _selectedMode = NotificationMode.auto),
            ),
            6.verticalSpace,
            _ModeOption(
              label: context.tr(LocaleKeys.dialog_notification_mode_custom_days_label).toUpperCase(),
              description: context.tr(LocaleKeys.dialog_notification_mode_custom_days_description),
              isSelected: _selectedMode == NotificationMode.manual,
              onTap: () =>
                  setState(() => _selectedMode = NotificationMode.manual),
            ),
            AnimatedCrossFade(
              crossFadeState: _selectedMode == NotificationMode.manual
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: CustomAnimationDurations.ultraLow,
              sizeCurve: Curves.fastEaseInToSlowEaseOut,
              secondChild: Container(),
              firstChild: Padding(
                // padding: EdgeInsets.only(top: 16.h, bottom: 4.0),
                padding: EdgeInsets.fromLTRB(6.w, 16.h, 6.w, 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _weekdays(context).map((w) {
                    final isSelected = _selectedDays.contains(w.day);
                    return _DayChip(
                      label: w.label,
                      isSelected: isSelected,
                      onTap: () => _toggleDay(w.day),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _pop() {
    final effectiveMode =
        _selectedMode == NotificationMode.manual && _selectedDays.isEmpty
        ? NotificationMode.auto
        : _selectedMode;
    Navigator.of(
      context,
    ).pop<NotificationModeResult>((mode: effectiveMode, days: _selectedDays));
  }
}

class _ModeOption extends StatelessWidget {
  const _ModeOption({
    required this.label,
    required this.description,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final String description;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SurfaceContainer.ellipse(
        color: isSelected
            ? context.theme.colorScheme.secondary.withValues(alpha: 0.08)
            : context.theme.colorScheme.surface,
        borderColor: isSelected
            ? context.theme.colorScheme.secondary.withValues(alpha: 0.4)
            : context.theme.dividerColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: h6.copyWith(
                        color: context.textColor.withValues(alpha: 0.9),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    2.verticalSpace,
                    Text(
                      description,
                      style: bodyM.copyWith(color: context.textColorTernary),
                    ),
                  ],
                ),
              ),
              if (isSelected)
                CommonAppIcon(
                  path: AppAssets.checkmarkLinear,
                  color: context.theme.colorScheme.primary,
                  size: 22,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DayChip extends StatelessWidget {
  const _DayChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  static final size = Size.square(34.w);

  @override
  Widget build(BuildContext context) {
    final color = isSelected
              ? context.theme.colorScheme.secondary
              : context.theme.colorScheme.background;
    
    return SurfaceContainer.circle(
      onTap: onTap,
      size: size,
      color: color,
      hoverColor: color,
      elevation: 2,
      showBorder: false,
      child: Center(
        child: Text(
          label,
          style: bodyS.copyWith(
            fontWeight: isSelected ? FontWeight.w900 : FontWeight.w600,
            color: isSelected ? Colors.white : context.textColorSecondary,
          ),
        ),
      ),
    );
  }
}
