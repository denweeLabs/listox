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

enum _AppInputVariant { container, onlyField, value, password }

class AppInput extends StatefulWidget {
  static const defaultElevation = 0.0;
  
  const AppInput._({
    super.key,
    required this.variant,
    this.hint,
    this.prefixIcon,
    this.prefixText,
    this.onPrefixTap,
    this.suffixIcon,
    this.onSuffixIconTap,
    this.onChanged,
    this.onEditingComplete,
    this.controller,
    this.focusNode,
    this.textInputType,
    this.textInputAction,
    this.isEnabled = true,
    this.inputFormatters,
    this.inError = false,
    this.errorMessage,
    this.padding,
    this.textCapitalization = TextCapitalization.none,
    this.autofillHints = const <String>[],
    this.backgroundColor,
    this.elevation = defaultElevation,
    this.displayValue,
    this.onTap,
    this.errorPadding,
    this.prefixTextSize = 12,
  });

  /// Standard elevated input with optional prefix (icon or text) and suffix.
  /// Supports inline error message.
  factory AppInput.containerField({
    Key? key,
    String? hint,
    String? prefixIcon,
    String? prefixText,
    VoidCallback? onPrefixTap,
    String? suffixIcon,
    VoidCallback? onSuffixIconTap,
    void Function(String)? onChanged,
    VoidCallback? onEditingComplete,
    TextEditingController? controller,
    FocusNode? focusNode,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
    bool isEnabled = true,
    List<TextInputFormatter>? inputFormatters,
    bool inError = false,
    String? errorMessage,
    EdgeInsetsGeometry? padding,
    TextCapitalization textCapitalization = TextCapitalization.none,
    Color? backgroundColor,
    double elevation = defaultElevation,
    EdgeInsets? errorPadding,
    int prefixTextSize = 12,
  }) {
    return AppInput._(
      key: key,
      variant: _AppInputVariant.container,
      hint: hint,
      prefixIcon: prefixIcon,
      prefixText: prefixText,
      onPrefixTap: onPrefixTap,
      suffixIcon: suffixIcon,
      onSuffixIconTap: onSuffixIconTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      controller: controller,
      focusNode: focusNode,
      textInputType: textInputType,
      textInputAction: textInputAction,
      isEnabled: isEnabled,
      inputFormatters: inputFormatters,
      inError: inError,
      errorMessage: errorMessage,
      padding: padding,
      textCapitalization: textCapitalization,
      backgroundColor: backgroundColor,
      elevation: elevation,
      errorPadding: errorPadding,
      prefixTextSize: prefixTextSize,
    );
  }

  /// Compact search input — no prefix, no error message.
  /// Suitable for search bars embedded in page headers.
  factory AppInput.onlyField({
    Key? key,
    String? hint,
    String? suffixIcon,
    void Function(String)? onChanged,
    TextEditingController? controller,
    FocusNode? focusNode,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    double elevation = defaultElevation,
  }) {
    return AppInput._(
      key: key,
      variant: _AppInputVariant.onlyField,
      hint: hint,
      suffixIcon: suffixIcon,
      onChanged: onChanged,
      controller: controller,
      focusNode: focusNode,
      textInputType: textInputType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      backgroundColor: backgroundColor,
      padding: padding,
      elevation: elevation,
    );
  }

  /// Read-only tappable display field for picker inputs (e.g., due date).
  /// Shows [displayValue] or [hint] when no value is set.
  /// Supports inline error message.
  factory AppInput.value({
    Key? key,
    required String prefixIcon,
    String? hint,
    String? displayValue,
    VoidCallback? onTap,
    bool inError = false,
    String? errorMessage,
    Color? backgroundColor,
    double elevation = defaultElevation,
    EdgeInsets? errorPadding,
    EdgeInsetsGeometry? padding,
  }) {
    return AppInput._(
      key: key,
      variant: _AppInputVariant.value,
      prefixIcon: prefixIcon,
      hint: hint,
      displayValue: displayValue,
      onTap: onTap,
      inError: inError,
      errorMessage: errorMessage,
      backgroundColor: backgroundColor,
      elevation: elevation,
      errorPadding: errorPadding,
      padding: padding,
    );
  }

  /// Password input with built-in visibility toggle suffix.
  factory AppInput.passwordField({
    Key? key,
    String? hint,
    void Function(String)? onChanged,
    VoidCallback? onEditingComplete,
    TextEditingController? controller,
    FocusNode? focusNode,
    TextInputAction? textInputAction,
    bool inError = false,
    String? errorMessage,
    Iterable<String>? autofillHints = const <String>[],
    Color? backgroundColor,
    double elevation = defaultElevation,
    EdgeInsets? errorPadding,
  }) {
    return AppInput._(
      key: key,
      variant: _AppInputVariant.password,
      hint: hint,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      controller: controller,
      focusNode: focusNode,
      textInputAction: textInputAction,
      inError: inError,
      errorMessage: errorMessage,
      autofillHints: autofillHints,
      backgroundColor: backgroundColor,
      elevation: elevation,
      errorPadding: errorPadding,
    );
  }

  final _AppInputVariant variant;
  final String? hint;
  final String? prefixIcon;
  final String? prefixText;
  final VoidCallback? onPrefixTap;
  final String? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final void Function(String)? onChanged;
  final VoidCallback? onEditingComplete;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool isEnabled;
  final List<TextInputFormatter>? inputFormatters;
  final bool inError;
  final String? errorMessage;
  final EdgeInsetsGeometry? padding;
  final TextCapitalization textCapitalization;
  final Iterable<String>? autofillHints;
  final Color? backgroundColor;
  final double elevation;
  final String? displayValue;
  final VoidCallback? onTap;
  final EdgeInsets? errorPadding;
  final int prefixTextSize;

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

  bool get _isErrorState {
    return widget.inError && (widget.errorMessage != null && widget.errorMessage!.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return switch (widget.variant) {
      _AppInputVariant.container => _buildContainerVariant(context),
      _AppInputVariant.onlyField => _buildOnlyFieldVariant(context),
      _AppInputVariant.value => _buildValueVariant(context),
      _AppInputVariant.password => _buildPasswordVariant(context),
    };
  }

  // ---------------------------------------------------------------------------
  // containerField
  // ---------------------------------------------------------------------------

  Widget _buildContainerVariant(BuildContext context) {
    final backgroundColor = widget.backgroundColor ?? context.primaryContainer;

    return Column(
      children: [
        BounceTapAnimation(
          onTap: widget.focusNode?.requestFocus,
          child: PhysicalModel(
            elevation: widget.elevation,
            borderRadius: UiKitConstants.commonBorderRadius,
            shadowColor: Colors.black26,
            color: backgroundColor,
            child: Padding(
              padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                children: [
                  ?_buildPrefixWidget(context),
                  Expanded(child: _buildTextField()),
                  ?_buildSuffixWidget(context),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: AppInput.buildErrorMessage(
            context,
            _isErrorState,
            widget.errorMessage ?? '',
            padding: widget.errorPadding,
          ),
        ),
      ],
    );
  }

  // Fixed width matching Padding(all: 14.w) + icon(20) + Padding(all: 14.w),
  // so all fields have their text field start at the same x-position.
  static const double _prefixContainerWidth = 48.0;

  Widget? _buildPrefixWidget(BuildContext context) {
    Widget? content;

    if (widget.prefixText != null && widget.prefixText!.isNotEmpty) {
      final color = widget.inError ? context.theme.colorScheme.error : context.iconColor;
      content = SizedBox(
        width: _prefixContainerWidth.w,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.prefixText!,
            style: bodyS.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
              fontSize: widget.prefixTextSize.sp,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      );
    } else if (widget.prefixIcon != null && widget.prefixIcon!.isNotEmpty) {
      final color = widget.inError ? context.theme.colorScheme.error : context.iconColor;
      content = SizedBox(
        width: _prefixContainerWidth.w,
        child: Align(
          alignment: Alignment.center,
          child: CommonAppIcon(path: widget.prefixIcon!, size: 20, color: color),
        ),
      );
    }

    if (content == null) return null;

    if (widget.onPrefixTap != null) {
      return BounceTapAnimation(onTap: widget.onPrefixTap, child: content);
    }

    return content;
  }

  Widget? _buildSuffixWidget(BuildContext context) {
    if (widget.suffixIcon == null) return null;

    return BounceTapAnimation(
      minScale: 0.9,
      onTap: widget.onSuffixIconTap,
      child: Padding(
        padding: EdgeInsets.all(14.w),
        child: CommonAppIcon(
          path: widget.suffixIcon!,
          color: context.iconColor,
          size: 20,
        ),
      ),
    );
  }

  Widget _buildTextField() {
    return TextField(
      textCapitalization: widget.textCapitalization,
      style: textField.copyWith(color: context.textColor),
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: widget.textInputType ?? TextInputType.text,
      textInputAction: widget.textInputAction,
      autocorrect: false,
      cursorWidth: 1.5,
      enabled: widget.isEnabled,
      inputFormatters: widget.inputFormatters,
      autofillHints: widget.autofillHints,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hint,
        hintStyle: textFieldHint.copyWith(color: context.textColorSecondary),
      ),
      onTap: CoreHapticUtil.light,
    );
  }

  // ---------------------------------------------------------------------------
  // onlyField
  // ---------------------------------------------------------------------------

  Widget _buildOnlyFieldVariant(BuildContext context) {
    final backgroundColor = widget.backgroundColor ?? context.primaryContainer;

    return PhysicalModel(
      elevation: widget.elevation,
      borderRadius: UiKitConstants.commonBorderRadius,
      shadowColor: Colors.black26,
      color: backgroundColor,
      child: Padding(
        padding: widget.padding ?? EdgeInsets.only(left: 18.w),
        child: Row(
          children: [
            Expanded(child: _buildTextField()),
            ?_buildSuffixWidget(context),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // value
  // ---------------------------------------------------------------------------

  Widget _buildValueVariant(BuildContext context) {
    final backgroundColor = widget.backgroundColor ?? context.primaryContainer;
    final hasValue = widget.displayValue != null && widget.displayValue!.isNotEmpty;
    final iconColor = widget.inError ? context.theme.colorScheme.error : context.iconColor;

    return Column(
      children: [
        BounceTapAnimation(
          onTap: widget.onTap,
          child: PhysicalModel(
            elevation: widget.elevation,
            borderRadius: UiKitConstants.commonBorderRadius,
            shadowColor: Colors.black26,
            color: backgroundColor,
            child: Padding(
              padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 8.w, vertical: 22.h),
              child: Row(
                children: [
                  SizedBox(
                    width: _prefixContainerWidth.w,
                    child: Align(
                      alignment: Alignment.center,
                      child: CommonAppIcon(
                        path: widget.prefixIcon!,
                        size: 20,
                        color: iconColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      hasValue ? widget.displayValue! : (widget.hint ?? ''),
                      style: textField.copyWith(
                        color: hasValue ? null : context.textColorSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: AppInput.buildErrorMessage(
            context,
            _isErrorState,
            widget.errorMessage ?? '',
            padding: widget.errorPadding,
          ),
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // passwordField
  // ---------------------------------------------------------------------------

  Widget _buildPasswordVariant(BuildContext context) {
    final backgroundColor = widget.backgroundColor ?? context.primaryContainer;

    return Column(
      children: [
        BounceTapAnimation(
          onTap: widget.focusNode?.requestFocus,
          child: PhysicalModel(
            elevation: widget.elevation,
            borderRadius: UiKitConstants.commonBorderRadius,
            shadowColor: Colors.black26,
            color: backgroundColor,
            child: Padding(
              padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                children: [
                  Expanded(child: _buildObscuredTextField()),
                  _buildPasswordToggle(context),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: AppInput.buildErrorMessage(
            context,
            _isErrorState,
            widget.errorMessage ?? '',
            padding: widget.errorPadding,
          ),
        ),
      ],
    );
  }

  Widget _buildObscuredTextField() {
    return TextField(
      style: textField,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !_isPasswordVisible,
      textInputAction: widget.textInputAction,
      autocorrect: false,
      cursorWidth: 1.5,
      autofillHints: widget.autofillHints,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hint,
        hintStyle: textFieldHint,
      ),
      onTap: CoreHapticUtil.light,
    );
  }

  Widget _buildPasswordToggle(BuildContext context) {
    final iconColor = _isPasswordVisible
        ? context.iconColor.withValues(alpha: 0.9)
        : context.iconColor.withValues(alpha: 0.4);
    final iconPath = _isPasswordVisible ? UiKitAssets.eye : UiKitAssets.eyeSlash;

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
}
