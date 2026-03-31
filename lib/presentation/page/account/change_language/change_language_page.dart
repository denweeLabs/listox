import 'package:app_core/app_core.dart';
import 'package:listox/presentation/bloc/user_preferences/user_preferences_cubit.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:listox/di/di.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit/ui_kit.dart';

class ChangeLanguagePage extends StatefulWidget {
  const ChangeLanguagePage({super.key, this.onBack});

  final VoidCallback? onBack;

  static const routeName = 'ChangeLanguagePage';

  @override
  State<ChangeLanguagePage> createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  bool _isSearching = false;
  String _searchQuery = '';
  final _searchController = TextEditingController();
  final _searchFocus = FocusNode();

  List<AppLanguage> get _filteredLanguages {
    if (_searchQuery.isEmpty) return AppConstants.languages;
    final query = _searchQuery.toLowerCase();
    return AppConstants.languages.where((lang) {
      return lang.englishName.toLowerCase().contains(query) ||
          lang.nativeName.toLowerCase().contains(query);
    }).toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  void _startSearch() {
    setState(() => _isSearching = true);
    WidgetsBinding.instance.addPostFrameCallback((_) => _searchFocus.requestFocus());
  }

  void _stopSearch() {
    setState(() {
      _isSearching = false;
      _searchQuery = '';
    });
    _searchController.clear();
    _searchFocus.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      iconPath: AppAssets.globeLinear,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: context.topPadding + 24.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              switchInCurve: Curves.easeOutCubic,
              switchOutCurve: Curves.easeInCubic,
              child: _isSearching
                  ? _buildSearchBar(context)
                  : _buildTitleRow(context),
            ),
          ),
          24.verticalSpace,
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: _filteredLanguages.isEmpty
                  ? _buildEmptyState(context)
                  : ListView.separated(
                      key: const ValueKey('list'),
                      padding: EdgeInsets.fromLTRB(
                        28.w,
                        4.h,
                        28.w,
                        context.bottomPadding + 32.h,
                      ),
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: _filteredLanguages.length,
                      separatorBuilder: (_, _) => const Divider(height: 0.0),
                      itemBuilder: (_, index) {
                        final language = _filteredLanguages[index];
                        final isSelected = language.locale == context.locale;

                        return _buildItem(
                          context: context,
                          language: language,
                          isSelected: isSelected,
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitleRow(BuildContext context) {
    return Row(
      key: const ValueKey('title'),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBackButton(
          onTap: widget.onBack,
          brightness: AppIconButtonBrightness.solid,
        ),
        Text(
          context.tr(LocaleKeys.account_language_title),
          style: h4.copyWith(color: context.textColor),
        ),
        AppIconButton(
          iconPath: AppAssets.searchLinear,
          brightness: AppIconButtonBrightness.solid,
          onTap: _startSearch,
        ),
      ],
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Row(
      key: const ValueKey('search'),
      children: [
        AppIconButton(
          iconPath: AppAssets.crossLinear,
          brightness: AppIconButtonBrightness.solid,
          onTap: _stopSearch,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: AppInput(
            controller: _searchController,
            focusNode: _searchFocus,
            hint: context.tr(LocaleKeys.search_groceries_hint),
            suffixIcon: AppAssets.searchLinear,
            elevation: 3,
            textInputAction: TextInputAction.search,
            textCapitalization: TextCapitalization.none,
            backgroundColor: context.primaryContainer,
            padding: EdgeInsets.only(left: 18.w),
            onChanged: (value) => setState(() => _searchQuery = value),
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      key: const ValueKey('empty'),
      child: Text(
        '🔍',
        style: TextStyle(fontSize: 40.sp),
      ),
    );
  }

  Widget _buildItem({
    required BuildContext context,
    required AppLanguage language,
    required bool isSelected,
  }) {
    return BounceTapAnimation(
      minScale: 0.96,
      onTap: () => getIt<UserPreferencesCubit>().changeLanguage(language.locale),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    language.nativeName,
                    style: h3.copyWith(
                      color: context.textColor,
                    ),
                  ),
                  2.verticalSpace,
                  Text(
                    language.englishName,
                    style: bodyM.copyWith(color: context.textColorSecondary),
                  ),
                ],
              ),
            ),
            CoreWidgetsUtil.staticRepaintAnimatedCrossFade(
              state: isSelected
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: SurfaceContainer.circle(
                color: context.primaryContainer,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CommonAppIcon(
                    path: AppAssets.checkmarkLinear,
                    color: context.theme.colorScheme.secondary,
                    size: 18,
                  ),
                ),
              ),
              secondChild: const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
