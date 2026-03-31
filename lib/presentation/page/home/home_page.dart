import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/core/groceries/domain/entity/grocery.dart';
import 'package:listox/core/notifications/domain/service/notification_scheduler_service.dart';
import 'package:listox/presentation/bloc/groceries/groceries_cubit.dart';
import 'package:listox/presentation/shared/utils/bottom_sheet_util.dart';
import 'package:listox/presentation/widget/groceries/home_header.dart';
import 'package:listox/presentation/page/select_groceries/select_groceries_page.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/shared/router/root_router.dart';
import 'package:listox/di/di.dart';
import 'package:listox/presentation/widget/groceries/home_groceries_list_widget.dart';
import 'package:listox/presentation/widget/groceries/home_tab_bar_coach_content_widget.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:subscriptions/subscriptions.dart';
import 'package:ui_kit/ui_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  static const showcaseShowDelay = Duration(milliseconds: 600);
  static final tabBarHeight = 60.h;

  late final TabController _tabController;
  late final _tabBarKey = GlobalKey();

  late double _headerContentTopPadding;
  late double _maxHeaderHeight;
  late double _minHeaderHeight;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: GroceryDueCategory.values.length,
      vsync: this,
    );
    _checkOnboardingSheet();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _headerContentTopPadding = context.topPadding + 32.h;
    _maxHeaderHeight = _headerContentTopPadding + 200.h;
    _minHeaderHeight = _headerContentTopPadding + tabBarHeight + 24.h;
    context.read<GroceriesCubit>().updatePremiumStatus(
      SubscriptionScope.of(context).isPremium,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CommonDismissOnTap(
      dismiss: FocusScope.of(context).unfocus,
      child: BlocListener<GroceriesCubit, GroceriesState>(
        listenWhen: (prev, curr) => prev.isConfirming != curr.isConfirming,
        listener: (context, state) {
          if (!state.isConfirming) {
            CoreDialogsUtil.showSuccessSnackbar(
              title: context.tr(LocaleKeys.home_purchase_confirmed),
              description: context.tr(LocaleKeys.home_purchase_confirmed_description),
              displayDuration: const Duration(milliseconds: 2000),
            );
          }
        },
        child: CommonScaffold(
          resizeToAvoidBottomInset: false,
          systemOverlayType: ThemeType.light,
          overlappedWidget: _FloatingActionButton(onAdd: _onAdd),
          body: SolidVerticalFadingEdge(
            backgroundColor: context.theme.colorScheme.surface,
            size: const FadingEdges.bottom(242),
            child: BlocBuilder<GroceriesCubit, GroceriesState>(
              builder: (context, state) {
                return AnimatedSwitcher(
                  duration: CustomAnimationDurations.ultraLow,
                  child: state.isLoading
                      ? const Center(child: AppLoadingIndicator())
                      : NestedScrollView(
                          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                            SliverOverlapAbsorber(
                              handle:
                                  NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context,
                                  ),
                              sliver: SliverPersistentHeader(
                                pinned: true,
                                delegate: HomeHeaderDelegate(
                                  maxExtent: _maxHeaderHeight,
                                  minExtent: _minHeaderHeight,
                                  builder: (context, scrollFraction) =>
                                      HomeHeader(
                                        height: tabBarHeight,
                                        tabController: _tabController,
                                        topPadding: _headerContentTopPadding,
                                        thisWeekCount:
                                            state.thisWeekUnselectedCount,
                                        laterCount: state.laterUnselectedCount,
                                        scrollFraction: scrollFraction,
                                        onAccount: _onAccount,
                                        tabBarKey: _tabBarKey,
                                      ),
                                ),
                              ),
                            ),
                          ],
                          physics: const BouncingScrollPhysics(),
                          body: TabBarView(
                            controller: _tabController,
                            children: [
                              HomeGroceriesList(
                                items: state.thisWeekItems,
                                category: GroceryDueCategory.thisWeek,
                                hasHiddenItems: state.thisWeekHasHiddenItems,
                              ),
                              HomeGroceriesList(
                                items: state.laterItems,
                                category: GroceryDueCategory.later,
                                hasHiddenItems: state.laterHasHiddenItems,
                              ),
                            ],
                          ).autoFadeInLeft(sequencePos: 1),
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _checkOnboardingSheet() async {
    final result = await AppBottomSheets.showOnboardingIfNeeded(
      context: context,
      isMounted: () => mounted,
    );
    if (result == null) return;
    
    await Future.delayed(showcaseShowDelay);
    if (!mounted) return;

    startHomeTutorial(
      context: context,
      tabBarKey: _tabBarKey,
      onFinish: () {
        Future.delayed(CustomAnimationDurations.ultraLow, () {
          getIt<NotificationSchedulerService>().initialize();
        });
      },
    );
  }

  void _onAdd() {
    const args = SelectGroceriesPageArgs();
    Navigator.of(context).pushNamed(Routes.selectGroceries, arguments: args);
  }

  void _onAccount() {
    Navigator.of(context).pushReplacementNamed(Routes.account);
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({required this.onAdd});

  final VoidCallback onAdd;

  static const fabSize = 62.0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: context.bottomPadding + 16.h,
          right: 28.w,
        ),
        child: SurfaceContainer.circle(
          onTap: onAdd,
          size: Size.square(fabSize.w),
          color: context.theme.colorScheme.primary,
          hoverColor: context.theme.colorScheme.secondary,
          elevation: 4.0,
          child: Center(
            child: CommonAppRawIcon(
              path: AppAssets.addLinear,
              color: context.lightIconColor,
              size: 30,
            ),
          ),
        ).autoElasticIn(sequencePos: 2),
      ),
    );
  }
}
