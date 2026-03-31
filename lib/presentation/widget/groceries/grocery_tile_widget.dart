import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/di/di.dart';
import 'package:listox/presentation/bloc/groceries/groceries_cubit.dart';
import 'package:listox/presentation/page/edit_grocery/edit_grocery_page.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/constants/app_constants.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/shared/router/root_router.dart';
import 'package:listox/presentation/widget/shared/dialogs/app_dialogs.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:ui_kit/ui_kit.dart';

class GroceryTile extends StatefulWidget {
  const GroceryTile({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
    this.quantity = 1,
    this.onQuantityChanged,
  });

  final Grocery item;
  final bool isSelected;
  final void Function(UniqueId) onTap;
  final int quantity;
  final void Function(int)? onQuantityChanged;

  static const borderRadius = BorderRadius.all(Radius.circular(24));

  @override
  State<GroceryTile> createState() => _GroceryTileState();
}

class _GroceryTileState extends State<GroceryTile>
    with SingleTickerProviderStateMixin {
  late final controller = SlidableController(this);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      controller: controller,
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          if (!widget.item.isQuickAdd)
            CustomSlidableAction(
              onPressed: (_) => _onEditItem(),
              backgroundColor: AppColors.lightGreen,
              borderRadius: UiKitConstants.commonBorderRadius,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonAppRawIcon(
                    path: AppAssets.editBoxLinear,
                    color: context.lightIconColor,
                    size: 20,
                  ),
                  4.verticalSpace,
                  Text(
                    context.tr(LocaleKeys.common_edit),
                    style: bodyS.copyWith(color: context.lightTextColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          CustomSlidableAction(
            onPressed: (_) => _showDeleteConfirmation(context),
            backgroundColor: AppColors.lightRed,
            borderRadius: UiKitConstants.commonBorderRadius,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonAppRawIcon(
                  path: AppAssets.trashLinear,
                  color: context.lightIconColor,
                  size: 20,
                ),
                4.verticalSpace,
                Text(
                  context.tr(LocaleKeys.common_delete),
                  style: bodyS.copyWith(color: context.lightTextColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
      child: SurfaceContainer.ellipse(
        onTap: widget.isSelected ? null : () => widget.onTap(widget.item.id),
        onLongTap: controller.openEndActionPane,
        showBorder: false,
        color: context.primaryContainer,
        hoverColor: context.secondaryContainer,
        borderRadius: GroceryTile.borderRadius,
        elevation: 3.0,
        child: Padding(
          padding: EdgeInsets.all(18.w),
          child: Row(
            children: [
              SurfaceContainer.ellipse(
                borderRadius: UiKitConstants.commonBorderRadius,
                color: widget.isSelected
                    ? context.theme.colorScheme.secondary
                    : context.iconColor.withValues(alpha: .05),
                size: const Size.square(48),
                showBorder: false,
                child: Center(
                  child: CommonAppRawIcon(
                    path: widget.item.isQuickAdd
                        ? AppAssets.clockLinear
                        : widget.item.icon,
                    color: widget.isSelected
                        ? context.lightIconColor
                        : context.theme.colorScheme.primary,
                    size: 22,
                  ),
                ),
              ),
              16.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.item.localizedName(),
                      style: h5.copyWith(
                        decoration: widget.isSelected
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    3.verticalSpace,
                    Text(
                      _dueDateLabel(context, widget.item.daysUntilDue),
                      style: bodyS.copyWith(color: context.textColorTernary),
                    ),
                  ],
                ),
              ),
              12.horizontalSpace,
              widget.isSelected
                  ? _QuantitySelector(
                      quantity: widget.quantity,
                      onChanged: widget.onQuantityChanged ?? (_) {},
                      onDelete: () => widget.onTap(widget.item.id),
                    )
                  : AppCheckbox(isChecked: false),
            ],
          ),
        ),
      ),
    );
  }

  String _dueDateLabel(BuildContext context, int days) {
    if (days < 0) return context.plural(LocaleKeys.home_due_overdue, -days);
    if (days == 0) return context.tr(LocaleKeys.home_due_today);
    if (days == 1) return context.tr(LocaleKeys.home_due_tomorrow);
    return context.plural(LocaleKeys.home_due_in_days, days);
  }

  void _onEditItem() async {
    final args = EditGroceryPageArgs(grocery: widget.item);
    final updatedItem = await Navigator.of(
      context,
    ).pushNamed<Grocery?>(Routes.editGrocery, arguments: args);

    if (updatedItem != null) {
      getIt<GroceriesCubit>().updateGrocery(updatedItem);
    }
  }

  void _showDeleteConfirmation(BuildContext context) async {
    final isOk = await AppDialogs.showGroceryDeleteConfirmationDialog(
      context,
      widget.item.localizedName(),
    );
    if (isOk == true) {
      getIt<GroceriesCubit>().deleteGrocery(widget.item.id);
    }
  }
}

class _QuantitySelector extends StatefulWidget {
  const _QuantitySelector({
    required this.quantity,
    required this.onChanged,
    required this.onDelete,
  });

  final int quantity;
  final void Function(int) onChanged;
  final VoidCallback onDelete;

  @override
  State<_QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<_QuantitySelector> {
  late final _controller = TextEditingController(
    text: widget.quantity.toString(),
  );
  final _focusNode = FocusNode();

  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void didUpdateWidget(_QuantitySelector old) {
    super.didUpdateWidget(old);
    if (!_isEditing) _controller.text = widget.quantity.toString();
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    if (!_focusNode.hasFocus && _isEditing) _confirm();
  }

  void _confirm() {
    final parsed = int.tryParse(_controller.text.trim());
    final value = (parsed ?? widget.quantity).clamp(
      AppConstants.itemMinQuantity,
      AppConstants.itemMaxQuantity,
    );
    setState(() => _isEditing = false);
    _controller.text = value.toString();
    widget.onChanged(value);
  }

  void _startEditing() {
    setState(() => _isEditing = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
      _controller.selection = TextSelection(
        baseOffset: 0,
        extentOffset: _controller.text.length,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final showDeleteButton = widget.quantity <= AppConstants.itemMinQuantity;
    
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _StepButton(
          label: '−',
          enabled: widget.quantity > AppConstants.itemMinQuantity,
          showDelete: showDeleteButton,
          onTap: () {
            if (showDeleteButton) return widget.onDelete();
            final n = widget.quantity - 1;
            _controller.text = n.toString();
            widget.onChanged(n);
          },
        ),
        GestureDetector(
          onTap: _startEditing,
          child: SizedBox(
            width: 32.w,
            child: _isEditing
                ? TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    onEditingComplete: _confirm,
                    textAlign: TextAlign.center,
                    style: h5.copyWith(color: context.textColor),
                    decoration: const InputDecoration.collapsed(hintText: ''),
                  )
                : AnimatedNumber(
                    number: widget.quantity,
                    style: h5.copyWith(
                      color: context.textColor,
                      letterSpacing: -1,
                      height: 0.0,
                    ),
                  ),
          ),
        ),
        _StepButton(
          label: '+',
          enabled: widget.quantity < AppConstants.itemMaxQuantity,
          showDelete: false,
          onTap: () {
            if (widget.quantity >= AppConstants.itemMaxQuantity) return;
            final n = widget.quantity + 1;
            _controller.text = n.toString();
            widget.onChanged(n);
          },
        ),
      ],
    );
  }
}

class _StepButton extends StatelessWidget {
  const _StepButton({
    required this.label,
    required this.showDelete,
    required this.enabled,
    required this.onTap,
  });

  final String label;
  final bool enabled;
  final bool showDelete;
  final VoidCallback onTap;

  static final size = 28.w;

  @override
  Widget build(BuildContext context) {
    final color = _getColor(context);

    return BounceTapAnimation(
      onTap: enabled || showDelete ? onTap : null,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: Center(
          child: AnimatedSwitcher(
            duration: CustomAnimationDurations.ultraLow,
            switchInCurve: Curves.easeInOutSine,
            switchOutCurve: Curves.easeInOutSine,
            child: showDelete
                ? CommonAppRawIcon(
                    path: AppAssets.trashLinear,
                    color: context.lightIconColor,
                    size: 14,
                  )
                : Text(
                    label,
                    style: TextStyle(
                      height: 0.0,
                      fontSize: 18.sp,
                      color: enabled
                          ? context.theme.colorScheme.primary
                          : context.iconColorTernary,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Color _getColor(BuildContext context) {
    if (showDelete) return AppColors.lightRed;
    if (enabled) {
      return context.theme.colorScheme.primary.withValues(alpha: 0.15);
    }
    return context.iconColor.withValues(alpha: 0.08);
  }
}
