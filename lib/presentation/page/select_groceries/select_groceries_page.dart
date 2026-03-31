// ignore_for_file: use_build_context_synchronously

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/core/groceries/domain/entity/grocery_category.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/presentation/bloc/search_groceries/search_groceries_cubit.dart';
import 'package:listox/presentation/bloc/select_groceries/select_groceries_cubit.dart';
import 'package:listox/presentation/page/add_custom_grocery/add_custom_grocery_page.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/shared/router/root_router.dart';
import 'package:listox/presentation/shared/utils/bottom_sheet_util.dart';
import 'package:listox/presentation/widget/groceries/grocery_template_tile_widget.dart';
import 'package:listox/presentation/widget/groceries/smart_engine_banner_widget.dart';
import 'package:listox/presentation/page/select_groceries/search_groceries_page.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:subscriptions/subscriptions.dart';
import 'package:ui_kit/ui_kit.dart';

final _hPadding = 28.w;

class SelectGroceriesPageArgs {
  final Set<UniqueId> selectedGroceryIds;
  final bool isOnboarding;

  const SelectGroceriesPageArgs({
    this.selectedGroceryIds = const {},
    this.isOnboarding = false,
  });
}

class SelectGroceriesPage extends StatefulWidget {
  const SelectGroceriesPage({super.key, required this.args, this.onBack});

  final SelectGroceriesPageArgs args;
  final VoidCallback? onBack;

  static const routeName = '/SelectGroceriesPage';

  static const gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    mainAxisSpacing: 8,
    crossAxisSpacing: 8,
    childAspectRatio: 1,
  );

  @override
  State<SelectGroceriesPage> createState() => _SelectGroceriesPageState();
}

class _SelectGroceriesPageState extends State<SelectGroceriesPage> {
  final _nav = SubpagesController();

  @override
  void dispose() {
    _nav.dispose();
    super.dispose();
  }

  bool _listener(BuildContext context, SelectGroceriesState state) {
    final failure = state.failure.toNullable();

    if (failure != null) {
      CoreDialogsUtil.showErrorSnackbar(
        title: context.tr(LocaleKeys.label_whoops),
        description: failure.errorMessage(context),
      );
    } else if (state.isConfirmationSuccess) {
      Navigator.of(context).pop(state.selectedItems);
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SelectGroceriesCubit, SelectGroceriesState>(
      listener: _listener,
      listenWhen: (p, c) => p.isConfirming && !c.isConfirming,
      child: CommonPopScope(
        onWillPop: () => _onBackTap(context),
        child: CommonScaffold(
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: CommonSubpagesNavigator(
                        controller: _nav,
                        home: _SelectGrid(
                          onAddItem: _onAddItem,
                          onItemSelect: _onItemSelect,
                          isOnboarding: widget.args.isOnboarding,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0.0,
                      right: 0.0,
                      top: widget.args.isOnboarding ? 12.h : context.topPadding + 8.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: ValueListenableBuilder<Widget?>(
                          valueListenable: _nav.subPageNotifier,
                          builder: (context, subPage, _) {
                            final onSearch = subPage != null;
                            return Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                AppBackButton(
                                  onTap: () => _onBackTap(context),
                                  useBackgroundContainer: false,
                                  size: 32,
                                ),
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 200),
                                  switchInCurve: Curves.easeInOutSine,
                                  switchOutCurve: Curves.easeInOutSine,
                                  child: onSearch
                                      ? const SizedBox.shrink(
                                          key: ValueKey(0),
                                        )
                                      : AppIconButton(
                                          key: const ValueKey(1),
                                          iconPath: AppAssets.searchLinear,
                                          onTap: _onSearchTap,
                                          useBackgroundContainer: false,
                                          size: 24,
                                        ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(28.w, 10.h, 28.w, 24.h),
                child: SafeArea(
                  top: false,
                  child: BlocBuilder<SelectGroceriesCubit, SelectGroceriesState>(
                    builder: (context, state) {
                      final isPremium = SubscriptionScope.of(context).isPremium;
                      return AppSolidButton(
                        text: isPremium ? context.tr(LocaleKeys.select_groceries_button_done) : '',
                        isBubbles: state.canComplete,
                        textColor: context.lightTextColor,
                        displayWidgetBuilder: isPremium
                            ? null
                            : (textColor) => AnimatedNumber(
                                  number: state.selectedGroceryIds.length,
                                  style: solidButton.copyWith(color: textColor),
                                  suffix: context.tr(
                                    LocaleKeys.select_groceries_button_selected_suffix,
                                    namedArgs: {'max': AppConstants.maxItemsSelectionCount.toString()},
                                  ).toUpperCase(),
                                ),
                        isDisabled: !state.canComplete,
                        onTap: context
                            .read<SelectGroceriesCubit>()
                            .confirmSelection,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onAddItem(UniqueId categoryId) async {
    final result = await Navigator.of(context).pushNamed(
      Routes.addCustomGrocery,
      arguments: AddCustomGroceryPageArgs(initialCategoryId: categoryId),
    );
    if (result is GroceryTemplate && context.mounted) {
      context.read<SelectGroceriesCubit>().addCustomGrocery(result);
    }
  }

  void _onItemSelect(GroceryTemplate item) {
    final isPremium = SubscriptionScope.read(context).isPremium;
    final added = context.read<SelectGroceriesCubit>().toggleGrocery(
      item.id,
      isPremium: isPremium,
    );
    if (!added) {
      if (widget.args.isOnboarding) {
        return CoreDialogsUtil.showToastMessage(
          context.tr(
            LocaleKeys.select_groceries_limit_reached,
            namedArgs: {'max': AppConstants.maxItemsSelectionCount.toString()},
          ),
        );
      }

      AppBottomSheets.showPaywall(context);
    }
  }

  void _onBackTap(BuildContext context) {
    if (_nav.subPageNotifier.value != null) {
      _nav.goHome();
      context.read<SelectGroceriesCubit>().reloadItems();
      context.read<SearchGroceriesCubit>().search('');
    } else {
      _goBack(context);
    }
  }

  void _onSearchTap() {
    _nav.navigateTo(
      SearchGroceriesPage(
        isOnboarding: widget.args.isOnboarding,
        onItemSelect: _onItemSelect,
      ),
    );
  }

  void _goBack(BuildContext context) {
    if (widget.onBack != null) {
      widget.onBack!();
      return;
    }
    if (!Navigator.of(context).canPop()) return;
    Navigator.of(context).pop();
  }
}

// ─── Select grid ─────────────────────────────────────────────────────────────

class _SelectGrid extends StatelessWidget {
  const _SelectGrid({
    required this.onAddItem,
    required this.onItemSelect,
    required this.isOnboarding,
  });

  final void Function(UniqueId categoryId) onAddItem;
  final void Function(GroceryTemplate item) onItemSelect;
  final bool isOnboarding;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectGroceriesCubit, SelectGroceriesState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverList.list(
              children: [
                SizedBox(height: 0.085.sh),
                if (!isOnboarding) SizedBox(height: 42.h),
                Text(
                  context.tr(LocaleKeys.select_groceries_heading),
                  style: h0.copyWith(color: context.textColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Text(
                    context.tr(LocaleKeys.select_groceries_description),
                    style: bodyL.copyWith(
                      color: context.textColorTernary,
                      letterSpacing: -0.2,
                      height: 0.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
    
            for (var i = 0; i < state.categories.length; i++) ...[
              ..._buildCategoryGroup(
                context: context,
                category: state.categories[i],
                items: state.groceriesForCategory(state.categories[i].id),
                selectedIds: state.selectedGroceryIds,
              ),
            ],
    
            const SliverToBoxAdapter(child: SizedBox(height: 42)),
    
            const SliverFillRemaining(
              hasScrollBody: false,
              child: SmartEngineBanner(),
            ),
    
            const SliverToBoxAdapter(child: SizedBox(height: 108)),
          ],
        );
      },
    );
  }

  List<Widget> _buildCategoryGroup({
    required BuildContext context,
    required GroceryCategory category,
    required List<GroceryTemplate> items,
    required Set<UniqueId> selectedIds,
  }) {
    return [
      const SliverToBoxAdapter(child: SizedBox(height: 32)),

      SliverToBoxAdapter(
        child: RepaintBoundary(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _hPadding),
            child: Text(
              context.tr(category.name),
              style: h3.copyWith(
                color: context.textColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),

      const SliverToBoxAdapter(child: SizedBox(height: 10)),

      SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: _hPadding),
        sliver: SliverGrid(
          gridDelegate: SelectGroceriesPage.gridDelegate,
          delegate: SliverChildBuilderDelegate((context, index) {
            if (index == items.length) {
              return GroceryTemplateAdd(
                categoryId: category.id,
                onTap: () => onAddItem(category.id),
              );
            }
            final item = items[index];
            return GroceryTemplateTile(
              item: item,
              onTap: onItemSelect,
              isSelected: selectedIds.contains(item.id),
            );
          }, childCount: items.length + 1),
        ),
      ),
    ];
  }
}
