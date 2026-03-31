import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/presentation/bloc/add_custom_grocery/add_custom_grocery_cubit.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/widget/groceries/grocery_icon_selector_widget.dart';
import 'package:ui_kit/ui_kit.dart';

class EditGroceryPageArgs {
  final Grocery grocery;
  const EditGroceryPageArgs({required this.grocery});
}

class EditGroceryPage extends StatefulWidget {
  const EditGroceryPage({super.key, required this.args});

  static const routeName = '/EditGroceryPage';

  final EditGroceryPageArgs args;

  @override
  State<EditGroceryPage> createState() => _EditGroceryPageState();
}

class _EditGroceryPageState extends State<EditGroceryPage> {
  static final numRegExp = RegExp(r'\d+');

  late final String _consumptionDays;
  late final TextEditingController _nameController;
  late final TextEditingController _periodController;
  bool _periodInitialized = false;

  @override
  void initState() {
    super.initState();
    _consumptionDays = widget.args.grocery.consumptionPeriodDays.round().toString();
    _nameController = TextEditingController(
      text: widget.args.grocery.localizedName(),
    );
    _periodController = TextEditingController();
    _nameController.addListener(_onFormChanged);
    _periodController.addListener(_onFormChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_periodInitialized) {
      _periodInitialized = true;
      _periodController.text = context.plural(
        LocaleKeys.edit_grocery_input_period_default,
        int.parse(_consumptionDays),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _periodController.dispose();
    super.dispose();
  }

  void _onFormChanged() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return CommonPopScope(
      onWillPop: Navigator.of(context).pop,
      child: CommonScaffold(
        body: CommonDismissOnTap(
          dismiss: FocusScope.of(context).unfocus,
          child: Column(
            children: [
              Expanded(
                child: SolidVerticalFadingEdge(
                  backgroundColor: context.theme.colorScheme.surface,
                  size: const FadingEdges.symmetric(100),
                  child: ListView(
                    children: [
                      12.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 26.w),
                          child: const AppBackButton(),
                        ),
                      ),
                      24.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.w),
                        child: Text(
                          context.tr(LocaleKeys.edit_grocery_title, namedArgs: {'name': widget.args.grocery.localizedName()}),
                          style: h0.copyWith(color: context.textColor),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      32.verticalSpace,
                      SizedBox.fromSize(
                        size: Size.fromHeight(0.24.sh),
                        child:
                            BlocBuilder<
                              AddCustomGroceryCubit,
                              AddCustomGroceryState
                            >(
                              builder: (context, state) {
                                return GroceryIconSelector(
                                  selectedIcon: state.selectedIcon,
                                  onSelected: (path) => context
                                      .read<AddCustomGroceryCubit>()
                                      .selectIcon(path),
                                );
                              },
                            ),
                      ),
                      32.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.w),
                        child: AppInput(
                          hint: context.tr(LocaleKeys.edit_grocery_input_name_hint),
                          controller: _nameController,
                          prefixIcon: AppAssets.editBoxLinear,
                          textCapitalization: TextCapitalization.words,
                          padding: EdgeInsets.symmetric(
                            vertical: 10.h,
                            horizontal: 8.w,
                          ),
                        ),
                      ),
                      18.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.w),
                        child: AppInput(
                          hint: context.tr(LocaleKeys.edit_grocery_input_period_hint),
                          controller: _periodController,
                          prefixIcon: AppAssets.refresh2Linear,
                          textInputType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          padding: EdgeInsets.symmetric(
                            vertical: 10.h,
                            horizontal: 8.w,
                          ),
                        ),
                      ),
                      32.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.w),
                        child: Text(
                          context.tr(LocaleKeys.edit_grocery_input_period_description),
                          style: bodyM.copyWith(
                            color: context.textColorTernary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      128.verticalSpace,
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 18.h),
                child: SafeArea(
                  top: false,
                  child:
                      BlocBuilder<AddCustomGroceryCubit, AddCustomGroceryState>(
                        builder: (context, state) {
                          return AppSolidButton(
                            text: context.tr(LocaleKeys.edit_grocery_button_update),
                            isDisabled: !_canCreate(state),
                            onTap: _save,
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

  int _extractPeriod() {
    final numberMatch = numRegExp.firstMatch(_periodController.text);
    final period = int.tryParse(numberMatch?.group(0) ?? '') ?? 0;
    return period;
  }

  bool _canCreate(AddCustomGroceryState state) {
    final hasIcon = state.selectedIcon.isNotEmpty;
    final name = _nameController.text.trim();
    final period = _extractPeriod();
    return hasIcon && name.isNotEmpty && period > 0;
  }

  void _save() {
    final period = _extractPeriod();
    if (period <= 0) return;
    
    final item = context.read<AddCustomGroceryCubit>().createUpdatedGrocery(
      icon: context.read<AddCustomGroceryCubit>().state.selectedIcon,
      initialGrocery: widget.args.grocery,
      name: _nameController.text.trim(),
      consumptionPeriodDays: period.toDouble(),
    );

    Navigator.of(context).pop(item);
  }
}
