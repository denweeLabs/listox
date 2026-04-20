import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/src/constants/ui_kit_icons.dart';
import 'package:ui_kit/src/theme/app_theme.dart';
import 'package:ui_kit/src/theme/text_styles.dart';
import 'package:ui_kit/src/widgets/buttons/back_button_widget.dart';
import 'package:ui_kit/src/widgets/buttons/icon_button_widget.dart';
import 'package:ui_kit/src/widgets/inputs/app_input_widget.dart';

enum _CommonAppBarVariant { basic, suffix, search }

/// A generic app bar with three layout variants.
///
/// - [CommonAppBar.basic] — back button + title centered in the row.
/// - [CommonAppBar.suffix] — back button + centered title + trailing icon button.
/// - [CommonAppBar.search] — animates between title row (with search trigger)
///   and a search input bar. Search state is managed internally; the parent
///   receives query changes via [onQueryChanged].
class CommonAppBar extends StatefulWidget {
  const CommonAppBar._({
    super.key,
    required this.variant,
    required this.title,
    this.onBack,
    this.suffixIconPath,
    this.suffixIconColor,
    this.onSuffixTap,
    this.searchHint,
    this.onQueryChanged,
    this.textInputAction = TextInputAction.search,
  });

  /// Simple app bar: back button + perfectly centered title.
  factory CommonAppBar.basic({
    Key? key,
    required String title,
    VoidCallback? onBack,
  }) {
    return CommonAppBar._(
      key: key,
      variant: _CommonAppBarVariant.basic,
      title: title,
      onBack: onBack,
    );
  }

  /// App bar with a trailing icon button alongside the centered title.
  factory CommonAppBar.suffix({
    Key? key,
    required String title,
    required String suffixIconPath,
    required VoidCallback onSuffixTap,
    Color? suffixIconColor,
    VoidCallback? onBack,
  }) {
    return CommonAppBar._(
      key: key,
      variant: _CommonAppBarVariant.suffix,
      title: title,
      suffixIconPath: suffixIconPath,
      onSuffixTap: onSuffixTap,
      suffixIconColor: suffixIconColor,
      onBack: onBack,
    );
  }

  /// App bar that transitions between a title row and an inline search input.
  ///
  /// The search icon triggers search mode; the ✕ button dismisses it and
  /// resets the query. [onQueryChanged] is called on every keystroke and with
  /// an empty string when search is dismissed.
  factory CommonAppBar.search({
    Key? key,
    required String title,
    required String searchHint,
    required void Function(String query) onQueryChanged,
    VoidCallback? onBack,
    TextInputAction textInputAction = TextInputAction.search,
  }) {
    return CommonAppBar._(
      key: key,
      variant: _CommonAppBarVariant.search,
      title: title,
      searchHint: searchHint,
      onQueryChanged: onQueryChanged,
      onBack: onBack,
      textInputAction: textInputAction,
    );
  }

  final _CommonAppBarVariant variant;
  final String title;
  final VoidCallback? onBack;
  // suffix
  final String? suffixIconPath;
  final VoidCallback? onSuffixTap;
  final Color? suffixIconColor;
  // search
  final String? searchHint;
  final void Function(String query)? onQueryChanged;
  final TextInputAction textInputAction;

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  bool _isSearching = false;
  TextEditingController? _searchController;
  FocusNode? _searchFocus;

  @override
  void initState() {
    super.initState();
    if (widget.variant == _CommonAppBarVariant.search) {
      _searchController = TextEditingController();
      _searchFocus = FocusNode();
    }
  }

  @override
  void dispose() {
    _searchController?.dispose();
    _searchFocus?.dispose();
    super.dispose();
  }

  void _startSearch() {
    setState(() => _isSearching = true);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _searchFocus?.requestFocus(),
    );
  }

  void _stopSearch() {
    setState(() => _isSearching = false);
    _searchController?.clear();
    _searchFocus?.unfocus();
    widget.onQueryChanged?.call('');
  }

  @override
  Widget build(BuildContext context) {
    return switch (widget.variant) {
      _CommonAppBarVariant.basic => _buildTitleRow(context),
      _CommonAppBarVariant.suffix => _buildTitleRow(context),
      _CommonAppBarVariant.search => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeInCubic,
          child: _isSearching
              ? _buildSearchBar(context)
              : _buildTitleRow(context),
        ),
    };
  }

  // ---------------------------------------------------------------------------

  Widget _buildTitleRow(BuildContext context) {
    return Row(
      key: const ValueKey('title'),
      children: [
        AppBackButton(
          onTap: widget.onBack,
          brightness: AppIconButtonBrightness.solid,
        ),
        Expanded(
          child: Text(
            widget.title,
            style: h4.copyWith(color: context.textColor),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        _buildTitleSuffix(context),
      ],
    );
  }

  Widget _buildTitleSuffix(BuildContext context) {
    return switch (widget.variant) {
      _CommonAppBarVariant.basic => SizedBox(width: AppIconButton.containerSize.width),
      _CommonAppBarVariant.suffix => AppIconButton(
          iconPath: widget.suffixIconPath!,
          brightness: AppIconButtonBrightness.solid,
          color: widget.suffixIconColor,
          onTap: widget.onSuffixTap,
        ),
      _CommonAppBarVariant.search => AppIconButton(
          iconPath: UiKitIcons.search,
          brightness: AppIconButtonBrightness.solid,
          onTap: _startSearch,
        ),
    };
  }

  Widget _buildSearchBar(BuildContext context) {
    return Row(
      key: const ValueKey('search'),
      children: [
        AppIconButton(
          iconPath: UiKitIcons.x,
          brightness: AppIconButtonBrightness.solid,
          onTap: _stopSearch,
        ),
        12.horizontalSpace,
        Expanded(
          child: AppInput.onlyField(
            controller: _searchController,
            focusNode: _searchFocus,
            hint: widget.searchHint,
            suffixIcon: UiKitIcons.search,
            elevation: 3,
            textInputAction: widget.textInputAction,
            backgroundColor: context.primaryContainer,
            padding: EdgeInsets.only(left: 18.w),
            onChanged: widget.onQueryChanged,
          ),
        ),
      ],
    );
  }
}
