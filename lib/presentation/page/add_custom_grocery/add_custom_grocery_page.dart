import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app_core/app_core.dart';
import 'package:listox/presentation/bloc/add_custom_grocery/add_custom_grocery_cubit.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/widget/groceries/grocery_icon_selector_widget.dart';
import 'package:ui_kit/ui_kit.dart';

class AddCustomGroceryPageArgs {
  final UniqueId? initialCategoryId;
  final String? initialName;

  const AddCustomGroceryPageArgs({this.initialCategoryId, this.initialName});
}

class AddCustomGroceryPage extends StatefulWidget {
  const AddCustomGroceryPage({super.key, required this.args});

  final AddCustomGroceryPageArgs args;

  static const routeName = '/AddCustomGroceryPage';

  @override
  State<AddCustomGroceryPage> createState() => _AddCustomGroceryPageState();
}

class _AddCustomGroceryPageState extends State<AddCustomGroceryPage> {
  late final TextEditingController _nameController;
  late final TextEditingController _periodController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.args.initialName);
    _periodController = TextEditingController();
    _nameController.addListener(_onFormChanged);
    _periodController.addListener(_onFormChanged);
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
                          context.tr(LocaleKeys.add_custom_grocery_heading),
                          style: h0.copyWith(color: context.textColor),
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
                        child: AppInput.containerField(
                          elevation: 5,
                          hint: context.tr(LocaleKeys.add_custom_grocery_input_name_hint),
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
                        child: AppInput.containerField(
                          elevation: 5,
                          hint: context.tr(LocaleKeys.add_custom_grocery_input_period_hint),
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
                          context.tr(LocaleKeys.add_custom_grocery_input_period_description),
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
                            text: context.tr(LocaleKeys.add_custom_grocery_button_create),
                            isDisabled: !_canCreate(state),
                            onTap: _create,
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

  bool _canCreate(AddCustomGroceryState state) {
    final hasIcon = state.selectedIcon.isNotEmpty;
    final name = _nameController.text.trim();
    final period = int.tryParse(_periodController.text.trim()) ?? 0;
    return hasIcon && name.isNotEmpty && period > 0;
  }

  void _create() {
    final item = context.read<AddCustomGroceryCubit>().createGrocery(
      name: _nameController.text.trim(),
      consumptionPeriodDays: int.parse(
        _periodController.text.trim(),
      ).toDouble(),
    );
    Navigator.of(context).pop(item);
  }
}