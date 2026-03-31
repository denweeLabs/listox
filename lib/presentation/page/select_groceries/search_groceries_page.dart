// ignore_for_file: use_build_context_synchronously

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/presentation/bloc/search_groceries/search_groceries_cubit.dart';
import 'package:listox/presentation/bloc/select_groceries/select_groceries_cubit.dart';
import 'package:listox/presentation/page/add_custom_grocery/add_custom_grocery_page.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/shared/router/root_router.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchGroceriesPage extends StatefulWidget {
  const SearchGroceriesPage({
    super.key,
    required this.isOnboarding,
    required this.onItemSelect,
  });

  final bool isOnboarding;
  final void Function(GroceryTemplate item) onItemSelect;

  @override
  State<SearchGroceriesPage> createState() => _SearchGroceriesPageState();
}

class _SearchGroceriesPageState extends State<SearchGroceriesPage> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
    
    Future.delayed(CustomAnimationDurations.low, () {
      if (mounted) _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final padding = widget.isOnboarding
        ? EdgeInsets.fromLTRB(62.w, 12.h, 18.w, 10.h)
        : EdgeInsets.fromLTRB(62.w, context.topPadding + 8.h, 18.w, 10.h);
    
    return CommonDismissOnTap(
      dismiss: FocusScope.of(context).unfocus,
      child: Column(
        children: [
          AppInput(
            controller: _controller,
            focusNode: _focusNode,
            borderRadius: BorderRadius.zero,
            padding: padding,
            backgroundColor: context.theme.colorScheme.surface,
            hint: context.tr(LocaleKeys.search_groceries_hint),
            textCapitalization: TextCapitalization.words,
            onChanged: context.read<SearchGroceriesCubit>().search,
          ),
          Expanded(
            child: BlocBuilder<SelectGroceriesCubit, SelectGroceriesState>(
              builder: (context, selectState) =>
                  BlocBuilder<SearchGroceriesCubit, SearchGroceriesState>(
                    builder: (context, searchState) => ListView.separated(
                      padding: EdgeInsets.fromLTRB(
                        20.w,
                        20.h,
                        14.w,
                        context.bottomPadding + 40.h,
                      ),
                      separatorBuilder: (_, _) => 20.verticalSpace,
                      itemCount: searchState.results.length + 1,
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      itemBuilder: (context, index) {
                        if (index == searchState.results.length) {
                          return _AddMoreTile(
                            query: searchState.query,
                            onTap: () => _onAddCustomGrocery(context),
                          );
                        }
                        final item = searchState.results[index];
                        return _ResultTile(
                          item: item,
                          onSelect: widget.onItemSelect,
                          isSelected: selectState.selectedGroceryIds.contains(item.id),
                        );
                      },
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onAddCustomGrocery(BuildContext context) async {
    final initialName = context.read<SearchGroceriesCubit>().state.query.trim();
    final result = await Navigator.of(context).pushNamed<GroceryTemplate?>(
      Routes.addCustomGrocery,
      arguments: AddCustomGroceryPageArgs(initialName: initialName),
    );
    if (result != null && mounted) {
      context.read<SelectGroceriesCubit>().addCustomGrocery(result);
      context.read<SearchGroceriesCubit>().reloadItems();
    }
  }
}

class _ResultTile extends StatelessWidget {
  const _ResultTile({
    required this.item,
    required this.onSelect,
    required this.isSelected,
  });

  final GroceryTemplate item;
  final void Function(GroceryTemplate) onSelect;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return BounceTapAnimation(
      onTap: () => onSelect(item),
      child: Row(
        children: [
          SurfaceContainer.ellipse(
            borderRadius: UiKitConstants.commonBorderRadius,
            color: context.iconColor.withValues(alpha: .05),
            size: const Size.square(48),
            showBorder: isSelected,
            child: Center(
              child: CommonAppRawIcon(
                path: item.icon,
                color: isSelected
                    ? context.theme.colorScheme.primary
                    : context.iconColorSecondary,
                size: 22,
              ),
            ),
          ),
          14.horizontalSpace,
          Expanded(
            child: Text(
              item.localizedName(),
              style: h5.copyWith(color: context.textColor),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          AppCheckbox(isChecked: isSelected),
        ],
      ),
    );
  }
}

class _AddMoreTile extends StatelessWidget {
  const _AddMoreTile({required this.query, required this.onTap});

  final String query;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final txt = query.trim().isEmpty ? context.tr(LocaleKeys.select_groceries_add) : query;

    return BounceTapAnimation(
      onTap: onTap,
      child: Row(
        children: [
          SurfaceContainer.ellipse(
            borderRadius: UiKitConstants.commonBorderRadius,
            color: context.iconColor.withValues(alpha: .05),
            size: const Size.square(48),
            showBorder: false,
            child: Center(
              child: CommonAppRawIcon(
                path: AppAssets.addLinear,
                color: context.iconColorSecondary,
                size: 28,
              ),
            ),
          ),
          14.horizontalSpace,
          Expanded(
            child: Text(txt, style: h5.copyWith(color: context.textColor)),
          ),
        ],
      ),
    );
  }
}
