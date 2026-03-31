import 'package:ui_kit/src/constants/ui_kit_assets.dart';
import 'package:ui_kit/src/constants/ui_kit_constants.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:ui_kit/src/theme/text_styles.dart';
import 'package:ui_kit/src/utils/core_haptic_util.dart';
import 'package:ui_kit/src/widgets/buttons/icon_widget.dart';
import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do_plus/animate_do_plus.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.onChanged,
    this.onEditingComplete,
    this.controller,
    this.focusNode,
    this.textInputType,
    this.textInputAction,
    this.isPassword = false,
    this.showPasswordVisibilityButton = true,
    this.isEnabled = true,
    this.inError = false,
    this.inputFormatters,
    this.errorMessage,
    this.onlyInputField = false,
    this.border,
    this.borderRadius = UiKitConstants.commonBorderRadius,
    this.padding,
    this.onSuffixIconTap,
    this.style,
    this.textCapitalization = TextCapitalization.none,
    this.autofillHints = const <String>[],
    this.backgroundColor,
    this.cursorColor,
    this.primaryDetailsColor,
    this.errorPadding,
    this.prefixIconSize = 20,
    this.hintStyle,
    this.innerTrailingWidget,
    this.innerSuffixWidget,
    this.customPasswordVisibilityIcon,
    this.elevation = 8.0,
  });

  final String? hint;
  final String? prefixIcon;
  final String? suffixIcon;
  final Color? suffixIconColor;
  final void Function(String)? onChanged;
  final VoidCallback? onEditingComplete;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool isPassword;
  final bool showPasswordVisibilityButton;
  final Widget Function(bool)? customPasswordVisibilityIcon;
  final bool isEnabled;
  final List<TextInputFormatter>? inputFormatters;
  final bool inError;
  final String? errorMessage;
  final bool onlyInputField;
  final BoxBorder? border;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onSuffixIconTap;
  final TextStyle? style;
  final TextCapitalization textCapitalization;
  final Iterable<String>? autofillHints;
  final Color? backgroundColor;
  final Color? cursorColor;
  final Color? primaryDetailsColor;
  final EdgeInsets? errorPadding;
  final int prefixIconSize;
  final TextStyle? hintStyle;
  final Widget? innerTrailingWidget;
  final Widget? innerSuffixWidget;
  final double elevation;

  static Widget buildErrorMessage(
    BuildContext context,
    bool isError,
    String message, {
    Key? key,
    EdgeInsets? padding,
    Color? forcedColor,
    TextStyle? textStyle,
  }) {
    return AnimatedCrossFade(
      key: key,
      secondChild: Container(key: const ValueKey(false)),
      firstChild: Padding(
        key: const ValueKey(true),
        padding: padding ?? EdgeInsets.only(left: 20.w, top: 10.h, bottom: 4.h),
        child: Align(
          alignment: Alignment.centerLeft,
          child: AnimatedSwitcherPlus.translationBottom(
            offset: 0.3,
            duration: CustomAnimationDurations.low,
            switchInCurve: Curves.fastEaseInToSlowEaseOut,
            switchOutCurve: Curves.easeInExpo,
            child: Row(
              key: ValueKey(message),
              children: [
                Expanded(
                  child: Text(
                    message,
                    style: (textStyle ?? bodyS).copyWith(
                      color: forcedColor ?? context.theme.colorScheme.error,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      crossFadeState: isError ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstCurve: Curves.easeOut,
      secondCurve: Curves.easeIn,
      sizeCurve: Curves.elasticOut,
      duration: CustomAnimationDurations.low,
    );
  }

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  late var _isPasswordVisible = false;

  bool get isErrorState {
    return widget.inError && (widget.errorMessage != null && widget.errorMessage!.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = widget.backgroundColor ?? context.primaryContainer;

    return BounceTapAnimation(
      onTap: widget.focusNode?.requestFocus,
      child: PhysicalModel(
        elevation: widget.elevation,
        borderRadius: widget.borderRadius,
        shadowColor: Colors.black26,
        color: backgroundColor,
        child: Padding(
          padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 28.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  ?widget.innerSuffixWidget,
                  Expanded(child: _buildInputField()),
                  ?widget.innerTrailingWidget,
                ],
              ),
              SizedBox(
                width: double.maxFinite,
                child: AppInput.buildErrorMessage(
                  context,
                  isErrorState,
                  widget.errorMessage ?? '',
                  padding: widget.errorPadding,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField() {
    return TextField(
      textCapitalization: widget.textCapitalization,
      style: widget.style ?? textField.copyWith(color: widget.primaryDetailsColor),
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: widget.textInputType ?? TextInputType.text,
      obscureText: widget.isPassword && !_isPasswordVisible,
      textInputAction: widget.textInputAction,
      autocorrect: false,
      cursorColor: widget.cursorColor,
      cursorWidth: 1.5,
      enabled: widget.isEnabled,
      inputFormatters: widget.inputFormatters,
      autofillHints: widget.autofillHints,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: _buildPrefixIcon(context),
        suffixIcon: _buildSuffixIcon(context),
        hintText: widget.hint,
        hintStyle: widget.hintStyle ?? textFieldHint.copyWith(color: widget.primaryDetailsColor),
      ),
      onTap: CoreHapticUtil.light,
    );
  }

  Widget? _buildPrefixIcon(BuildContext context) {
    if (widget.prefixIcon != null && widget.prefixIcon!.isNotEmpty) {
      final color = widget.inError
          ? context.theme.colorScheme.error
          : (widget.primaryDetailsColor ?? context.iconColor);

      return Padding(
        padding: EdgeInsets.all(14.w),
        child: CommonAppIcon(
          path: widget.prefixIcon!,
          size: widget.prefixIconSize.toDouble(),
          color: color,
        ),
      );
    }

    return null;
  }

  Widget? _buildSuffixIcon(BuildContext context) {
    if (widget.isPassword && widget.showPasswordVisibilityButton) {
      final iconColor = _isPasswordVisible
          ? (widget.primaryDetailsColor ?? context.iconColor).withValues(alpha: 0.9)
          : (widget.primaryDetailsColor ?? context.iconColor).withValues(alpha: 0.4);
      final iconPath = _isPasswordVisible
          ? UiKitAssets.eye
          : UiKitAssets.eyeSlash;

      return BounceTapAnimation(
        onTap: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
        child: Padding(
          padding: EdgeInsets.all(14.w),
          child: CommonAppIcon(
            path: iconPath,
            color: iconColor,
            size: 16,
            useTransition: false,
          ),
        ),
      );
    }

    if (widget.suffixIcon != null) {
      final color = widget.suffixIconColor ??
          (widget.inError
              ? context.theme.colorScheme.error
              : widget.primaryDetailsColor ?? context.iconColor);

      return BounceTapAnimation(
        minScale: 0.9,
        onTap: widget.onSuffixIconTap,
        child: Padding(
          padding: EdgeInsets.all(14.w),
          child: CommonAppIcon(
            path: widget.suffixIcon!,
            color: color,
            size: 20,
          ),
        ),
      );
    }

    return null;
  }
}
