import 'dart:async';

import 'package:animated_reorderable_list/animated_reorderable_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/di/di.dart';
import 'package:listox/presentation/bloc/groceries/groceries_cubit.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/shared/utils/bottom_sheet_util.dart';
import 'package:listox/presentation/widget/shared/dialogs/app_dialogs.dart';
import 'package:listox/presentation/widget/groceries/groceries_purchase_banner_widget.dart';
import 'package:listox/presentation/widget/groceries/grocery_tile_widget.dart';
import 'package:listox/presentation/widget/groceries/quick_add_tile_widget.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/ui_kit.dart';

class HomeGroceriesList extends StatefulWidget {
  const HomeGroceriesList({
    super.key,
    required this.items,
    required this.category,
    required this.hasHiddenItems,
  });

  final List<Grocery> items;
  final GroceryDueCategory category;
  final bool hasHiddenItems;

  @override
  State<HomeGroceriesList> createState() => _HomeGroceriesListState();
}

class _HomeGroceriesListState extends State<HomeGroceriesList> {
  static const groceryRemoveAnimationDuration = Duration(milliseconds: 900);
  static const groceryRemoveDebounceDuration = Duration(milliseconds: 1500);
  
  static final horizontalPadding = 24.w;
  static final separatorSpacing = 12.h;
  
  bool _checkedSectionExpanded = true;

  // Prevent animation glitches by blocking re-checks of the same item.
  // Switching to a different item resets the timer immediately.
  Timer? _checkDebounceTimer;
  UniqueId? _lastCheckedId;

  @override
  void dispose() {
    _checkDebounceTimer?.cancel();
    super.dispose();
  }

  Future<void> _onToggleSelection(UniqueId itemId) async {
    if (_lastCheckedId == itemId && _checkDebounceTimer?.isActive == true) {
      return;
    }

    _checkDebounceTimer?.cancel();
    _lastCheckedId = itemId;
    _checkDebounceTimer = Timer(groceryRemoveDebounceDuration, () {
      _lastCheckedId = null;
    });

    context.read<GroceriesCubit>().toggleGrocerySelection(itemId);
  }

  @override
  Widget build(BuildContext context) {
    final unchecked = widget.items.where((g) => !g.isSelected).toList();
    final checked = widget.items.where((g) => g.isSelected).toList();

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: widget.items.isEmpty && !widget.hasHiddenItems
          ? _NoItems(category: widget.category, onTap: _onQuickAdd)
          : _buildScrollView(context, unchecked, checked),
    );
  }

  Widget _buildScrollView(
    BuildContext context,
    List<Grocery> unchecked,
    List<Grocery> checked,
  ) {
    return CustomScrollView(
      key: PageStorageKey(widget.category),
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
    
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: _buildListHeader(
              context: context,
              unchecked: unchecked,
              checked: checked,
            ),
          ),
        ),
    
        ReorderableAnimatedListImpl<Grocery>(
          items: unchecked,
          removeItemBuilder: (child, animation) {
            final opacity = Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.linear,
                reverseCurve: const Interval(0.0, 0.2),
              ),
            );
    
            return FadeTransition(
              opacity: opacity,
              child: Stack(
                children: [
                  child,
                  Positioned(
                    right: 10.w + horizontalPadding,
                    top: 0.0,
                    bottom: 12.h,
                    child: Center(
                      child: Container(
                        width: 48,
                        height: 48,
                        color: context.primaryContainer,
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Center(
                            child: LottieAnimation(
                              path: AppAssets.successCheckmarkAnimation,
                              duration: Duration(milliseconds: 1000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemBuilder: (context, index) {
            final item = unchecked[index];
    
            return Padding(
              key: ValueKey(item.id),
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                0.0,
                horizontalPadding,
                separatorSpacing,
              ),
              child: GroceryTile(
                item: item,
                onTap: _onToggleSelection,
                isSelected: false,
              ),
            );
          },
          isSameItem: (a, b) => a.id == b.id,
          removeDuration: groceryRemoveAnimationDuration,
          scrollDirection: Axis.vertical,
          buildDefaultDragHandles: false,
          longPressDraggable: false,
          enableSwap: false,
        ),
    
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: _buildListFooter(context: context, unchecked: unchecked),
          ),
        ),
    
        if (checked.isNotEmpty)
          SliverToBoxAdapter(child: _buildCheckedSection(context, checked)),
    
        SliverToBoxAdapter(
          child: SizedBox(height: context.bottomPadding + 0.17.sh),
        ),
      ],
    );
  }

  Widget _buildListHeader({
    required BuildContext context,
    required List<Grocery> unchecked,
    required List<Grocery> checked,
  }) {
    String preListHeader() {
      switch (widget.category) {
        case GroceryDueCategory.thisWeek:
          return context.tr(LocaleKeys.home_pre_list_this_week);
        case GroceryDueCategory.later:
          return context.tr(LocaleKeys.home_pre_list_later);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.verticalSpace,
        Text(
          preListHeader(),
          style: h5.copyWith(
            color: context.textColorTernary,
            fontWeight: FontWeight.w700,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        18.verticalSpace,
        AnimatedSize(
          clipBehavior: Clip.none,
          duration: const Duration(milliseconds: 300),
          child: checked.isNotEmpty
              ? Padding(
                  key: const ValueKey(true),
                  padding: EdgeInsets.only(bottom: separatorSpacing),
                  child:
                      GroceriesPurchaseBanner(
                        checkedCount: checked.length,
                        uncheckedCount: unchecked.length,
                        onCancel: context.read<GroceriesCubit>().clearSelection,
                        onPurchase: context
                            .read<GroceriesCubit>()
                            .confirmPurchase,
                      ).autoElasticIn(
                        delay: const Duration(milliseconds: 300),
                        duration: CustomAnimationDurations.low,
                        scaleCurve: Curves.fastEaseInToSlowEaseOut,
                        scale: const (0.94, 1.0),
                      ),
                )
              : Container(key: const ValueKey(false)),
        ),
      ],
    );
  }

  Widget _buildListFooter({
    required BuildContext context,
    required List<Grocery> unchecked,
  }) {
    final showPremiumCTA = widget.hasHiddenItems;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        QuickAddTile(onTap: _onQuickAdd),
        if (showPremiumCTA)
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: _PremiumLockCTA(
              onTap: () => AppBottomSheets.showPaywall(context),
            ),
          ),
      ],
    );
  }

  Widget _buildCheckedSection(BuildContext context, List<Grocery> checked) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCheckedSectionHeader(context, checked),
          _buildCheckedSectionItems(context, checked),
        ],
      ),
    );
  }

  Widget _buildCheckedSectionHeader(
    BuildContext context,
    List<Grocery> checked,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() => _checkedSectionExpanded = !_checkedSectionExpanded);
      },
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: EdgeInsets.only(top: 32.h, bottom: 18.h),
        child: Row(
          children: [
            Text(
              context.tr(LocaleKeys.home_checked_section_title),
              style: h5.copyWith(
                color: context.textColorTernary,
                fontWeight: FontWeight.w700,
              ),
            ),
            4.horizontalSpace,
            Text(
              '(${checked.length})',
              style: h5.copyWith(color: context.theme.colorScheme.primary),
            ),
            const Spacer(),
            AnimatedRotation(
              turns: _checkedSectionExpanded ? 0.0 : 0.5,
              duration: CustomAnimationDurations.ultraLow,
              curve: Curves.ease,
              child: CommonAppRawIcon(
                path: AppAssets.arrowUpIos,
                color: context.iconColorSecondary,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckedSectionItems(
    BuildContext context,
    List<Grocery> checked,
  ) {
    return AnimatedSize(
      clipBehavior: Clip.none,
      duration: CustomAnimationDurations.ultraLow,
      curve: Curves.fastEaseInToSlowEaseOut,
      alignment: Alignment.topCenter,
      child: Offstage(
        offstage: !_checkedSectionExpanded,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < checked.length; i++) ...[
              GroceryTile(
                item: checked[i],
                onTap: context.read<GroceriesCubit>().toggleGrocerySelection,
                isSelected: true,
                quantity: checked[i].selectedQuantity,
                onQuantityChanged: (q) => context
                    .read<GroceriesCubit>()
                    .setGroceryQuantity(checked[i].id, q),
              ).autoFadeIn(
                key: ValueKey('checked_${checked[i].id}'),
                delay: groceryRemoveAnimationDuration,
              ),
              if (i < checked.length - 1) SizedBox(height: separatorSpacing),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _onQuickAdd() async {
    final name = await AppDialogs.showQuickAddDialog(context);
    if (name != null && name.isNotEmpty) {
      getIt<GroceriesCubit>().addQuickGrocery(name, widget.category);
    }
  }
}

class _PremiumLockCTA extends StatelessWidget {
  const _PremiumLockCTA({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BounceTapAnimation(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonAppRawIcon(
                path: AppAssets.lockLinear,
                color: context.textColorTernary,
                size: 16,
              ),
              12.horizontalSpace,
              Flexible(
                child: Text(
                  context.tr(LocaleKeys.home_premium_lock_cta),
                  style: h7.copyWith(color: context.textColorTernary),
                ),
              ),
              4.horizontalSpace,
              CommonAppRawIcon(
                path: AppAssets.arrowRightIos,
                color: context.theme.colorScheme.secondary,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NoItems extends StatelessWidget {
  const _NoItems({required this.category, this.onTap});

  final GroceryDueCategory category;
  final VoidCallback? onTap;

  String _getAnimationPath() {
    switch (category) {
      case GroceryDueCategory.thisWeek:
        return AppAssets.scrollingChecklistAnimation;
      case GroceryDueCategory.later:
        return AppAssets.womanScrollingGroceriesAnimation;
    }
  }

  @override
  Widget build(BuildContext context) {
    final animationPath = _getAnimationPath();
    final height = category == GroceryDueCategory.later ? 0.22.sh : 0.25.sh;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 0.1.sh),
          SizedBox(
            height: height,
            width: double.infinity,
            child: LottieAnimation(path: animationPath, repeat: true),
          ),
          if (category == GroceryDueCategory.later) 12.verticalSpace,
          Text(
            context.tr(LocaleKeys.home_fully_stocked),
            style: h5.copyWith(color: context.textColor),
          ),
          if (onTap != null) ...[
            8.verticalSpace,
            SizedBox(
              width: 0.75.sw,
              child: Text(
                LocaleKeys.quick_add_empty_state_hint.tr(),
                style: bodyM.copyWith(color: context.textColorTernary),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
