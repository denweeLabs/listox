import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:ui_kit/ui_kit.dart';

class QuickAddDialog extends StatefulWidget {
  const QuickAddDialog({super.key});

  static const routeName = 'QuickAddDialog';

  @override
  State<QuickAddDialog> createState() => _QuickAddDialogState();
}

class _QuickAddDialogState extends State<QuickAddDialog> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _confirm() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    Navigator.of(context).pop(text);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: _controller,
      builder: (context, value, _) {
        final isEmpty = value.text.trim().isEmpty;

        return CoreDialog.confirmationWBody(
          decorationIcon: AppAssets.clockLinear,
          cancelButton: CoreDialogButton.cross(Navigator.of(context).pop),
          okButton: CoreDialogButton(
            AppAssets.checkmarkLinear,
            isEmpty ? () {} : _confirm,
            color: isEmpty ? context.iconColor.withValues(alpha: 0.25) : null,
            size: 26.0,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Text(
                  LocaleKeys.quick_add_dialog_title.tr(),
                  style: dialogTitle.copyWith(color: context.textColor),
                  textAlign: TextAlign.center,
                ),
                12.verticalSpace,
                Text(
                  LocaleKeys.quick_add_dialog_subtitle.tr(),
                  style: dialogSubtitle.copyWith(
                    color: context.textColorSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                16.verticalSpace,
                AppInput(
                  controller: _controller,
                  focusNode: _focusNode,
                  elevation: 0.0,
                  hint: LocaleKeys.quick_add_hint.tr(),
                  backgroundColor: context.isLightTheme
                      ? Colors.grey.withValues(alpha: 0.1)
                      : context.theme.colorScheme.surface.withValues(
                          alpha: 0.3,
                        ),
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: _confirm,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
