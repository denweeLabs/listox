import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:subscriptions/src/domain/entity/subscription_config.dart';
import 'package:subscriptions/src/domain/entity/subscription_failure.dart';
import 'package:subscriptions/src/domain/entity/subscription_plans.dart';
import 'package:subscriptions/src/domain/entity/user_subscription.dart';
import 'package:subscriptions/src/presentation/bloc/subscription_cubit.dart';
import 'package:subscriptions/src/presentation/paywall/constants/paywall_assets.dart';
import 'package:subscriptions/src/presentation/paywall/l10n/paywall_localizations.dart';
import 'package:subscriptions/src/presentation/paywall/settings/paywall_bullet_point.dart';
import 'package:subscriptions/src/presentation/paywall/settings/paywall_strings.dart';
import 'package:subscriptions/src/presentation/paywall/settings/paywall_theme.dart';
import 'package:subscriptions/src/presentation/paywall/snackbar/top_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

part 'widgets/tap_fade_widget.dart';
part 'widgets/checkbox_widget.dart';
part 'widgets/core_plan_tile_widget.dart';
part 'widgets/weekly_plan_tile_widget.dart';
part 'widgets/monthly_plan_tile_widget.dart';
part 'widgets/yearly_plan_tile_widget.dart';
part 'widgets/purchase_button_widget.dart';
part 'widgets/footer_links_widget.dart';
part 'widgets/success_dialog_widget.dart';
part 'widgets/error_snackbar_widget.dart';
part 'widgets/loading_indicator_widget.dart';
part 'widgets/bubbles_animation_widget.dart';
part 'widgets/shimmer_animation_widget.dart';
part 'widgets/overlay_restyle_widget.dart';

const _hPadding = 30.0;

class PaywallPage extends StatefulWidget {
  const PaywallPage({
    super.key,
    required this.topAnimation,
    required this.bulletPoints,
    required this.theme,
    required this.mediaQuery,
    this.strings,
    this.locale,
    this.closeButtonDelay = Duration.zero,
  });

  final Widget topAnimation;
  final List<PaywallBulletPoint> bulletPoints;
  final PaywallTheme theme;
  final PaywallStrings? strings;
  final String? locale;
  final MediaQueryData mediaQuery;
  final Duration closeButtonDelay;

  @override
  State<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends State<PaywallPage>
    with SingleTickerProviderStateMixin {
  late PaywallStrings _strings;

  late SubscriptionPlanType _selectedPlan;
  var _isRestoreOperation = false;

  AnimationController? _closeDelayController;
  bool _canClose = false;

  @override
  void initState() {
    super.initState();
    final variant = context.read<SubscriptionCubit>().config.productIds.variant;
    _selectedPlan = variant == SubscriptionVariant.monthly
        ? SubscriptionPlanType.monthly
        : SubscriptionPlanType.weekly;
    _initBackButton();
    _checkPlansReady();
  }

  @override
  void dispose() {
    _closeDelayController?.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.strings != null) {
      _strings = widget.strings!;
    } else {
      final deviceLocale = Localizations.localeOf(context).languageCode;
      final trialPeriodDays = context
          .read<SubscriptionCubit>()
          .config
          .productIds
          .trialPeriodDays;
      _strings = PaywallLocalizations.of(
        widget.locale ?? deviceLocale,
        trialPeriodDays: trialPeriodDays,
      );
    }
  }

  void _checkPlansReady() {
    final cubit = context.read<SubscriptionCubit>();
    if (!cubit.state.plansReady) {
      cubit.init();
    }
  }

  void _initBackButton() {
    if (widget.closeButtonDelay == Duration.zero) {
      _canClose = true;
    } else {
      _closeDelayController =
          AnimationController(vsync: this, duration: widget.closeButtonDelay)
            ..addStatusListener((status) {
              if (status == AnimationStatus.completed && mounted) {
                setState(() => _canClose = true);
              }
            })
            ..forward();
    }
  }

  void _showSuccessDialog(UserSubscription subscription) {
    final date = DateFormat('yMMMMd').format(subscription.expiresAt);
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      barrierColor: Colors.black87,
      animationStyle: const AnimationStyle(
        duration: Duration(milliseconds: 400),
        curve: Curves.fastEaseInToSlowEaseOut,
        reverseCurve: Curves.fastEaseInToSlowEaseOut,
      ),
      builder: (_) => _SuccessDialog(
        expiryDate: date,
        theme: widget.theme,
        strings: _strings,
        onDismiss: () {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void _showErrorSnackbar(String title, SubscriptionFailure failure) {
    showTopSnackBar(
      Overlay.of(context),
      _PaywallErrorSnackbar(
        title: title,
        subtitle: _strings.errorSubtitleBuilder(failure),
        theme: widget.theme,
      ),
      displayDuration: const Duration(milliseconds: 1500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _OverlayRestyle(
      child: Material(
        color: widget.theme.backgroundColor,
        child: Stack(
          children: [
            BlocConsumer<SubscriptionCubit, SubscriptionState>(
              listenWhen: (prev, curr) =>
                  (prev.isPurchasing && !curr.isPurchasing) ||
                  (prev.isRestoring && !curr.isRestoring),
              listener: (context, state) {
                if (state.failure != null &&
                    state.failure != SubscriptionFailure.purchaseCancelled) {
                  _showErrorSnackbar(
                    _isRestoreOperation
                        ? _strings.restoreErrorTitle
                        : _strings.purchaseErrorTitle,
                    state.failure!,
                  );
                } else if (state.failure == null &&
                    state.isPremium &&
                    state.subscription != null) {
                  _showSuccessDialog(state.subscription!);
                }
              },
              builder: (context, state) {
                final yearlyActive =
                    state.subscription?.planType == SubscriptionPlanType.yearly &&
                    (state.subscription?.isActive ?? false);
                final weeklyActive =
                    state.subscription?.planType == SubscriptionPlanType.weekly &&
                    (state.subscription?.isActive ?? false);
                final monthlyActive =
                    state.subscription?.planType == SubscriptionPlanType.monthly &&
                    (state.subscription?.isActive ?? false);

                return Column(
                  children: [
                    Expanded(
                      child: ListView(
                        physics: const ClampingScrollPhysics(),
                        padding: EdgeInsets.fromLTRB(
                          _hPadding,
                          0.0,
                          _hPadding,
                          12.0,
                        ),
                        children: [
                          widget.topAnimation,
                          const SizedBox(height: 12),
                          _buildTitle(),
                          SizedBox(height: widget.mediaQuery.size.height * 0.05),
                          _buildBulletPoints(),
                        ],
                      ),
                    ),
                    _buildFooter(
                      state: state,
                      mq: widget.mediaQuery,
                      yearlyActive: yearlyActive,
                      weeklyActive: weeklyActive,
                      monthlyActive: monthlyActive,
                    ),
                  ],
                );
              },
            ),
            Positioned(
              right: 24,
              top: widget.mediaQuery.padding.top + 12,
              child: _buildCloseButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      _strings.title,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: -1,
        height: 0.0,
        color: widget.theme.textColor,
      ),
      textAlign: TextAlign.center,
      maxLines: 2,
    );
  }

  Widget _buildBulletPoints() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.bulletPoints.length, (i) {
        final bp = widget.bulletPoints[i];
        final isLast = i == widget.bulletPoints.length - 1;

        return Padding(
          padding: isLast ? EdgeInsets.zero : const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PhysicalModel(
                shape: BoxShape.circle,
                color: widget.theme.primaryContainer,
                shadowColor: Colors.black45,
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(
                    bp.icon,
                    colorFilter: ColorFilter.mode(
                      widget.theme.primaryAccentColor,
                      BlendMode.srcIn,
                    ),
                    width: 20,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  bp.text,
                  style: TextStyle(
                    fontSize: 19,
                    color: widget.theme.textColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.4,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildFooter({
    required SubscriptionState state,
    required MediaQueryData mq,
    required bool yearlyActive,
    required bool weeklyActive,
    required bool monthlyActive,
  }) {
    final productIds = context.read<SubscriptionCubit>().config.productIds;
    final variant = productIds.variant;
    final trialPeriodDays = productIds.trialPeriodDays;
    final expirySubtitle = state.subscription != null
        ? _strings.activePlanSubtitleBuilder(
            DateFormat('yMMMd').format(state.subscription!.expiresAt),
          )
        : null;

    final selectedPlanIsActive =
        (_selectedPlan == SubscriptionPlanType.yearly && yearlyActive) ||
        (_selectedPlan == SubscriptionPlanType.weekly && weeklyActive) ||
        (_selectedPlan == SubscriptionPlanType.monthly && monthlyActive);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          _YearlyPlanTile(
            theme: widget.theme,
            strings: _strings,
            isSelected: _selectedPlan == SubscriptionPlanType.yearly,
            isActiveSubscription: yearlyActive,
            activeExpirySubtitle: yearlyActive ? expirySubtitle : null,
            actualPrice: _yearlyActualPrice(state),
            originalPrice: _yearlyOriginalPrice(state),
            discountPercent: state.plans?.yearlyDiscountPercent ?? 0,
            onTap: () => _selectPlan(SubscriptionPlanType.yearly),
          ),
          const SizedBox(height: 10),
          if (variant == SubscriptionVariant.weekly)
            _WeeklyPlanTile(
              theme: widget.theme,
              strings: _strings,
              isSelected: _selectedPlan == SubscriptionPlanType.weekly,
              isActiveSubscription: weeklyActive,
              activeExpirySubtitle: weeklyActive ? expirySubtitle : null,
              price: _weeklyPrice(state),
              trialPeriodDays: trialPeriodDays,
              onTap: () => _selectPlan(SubscriptionPlanType.weekly),
            )
          else
            _MonthlyPlanTile(
              theme: widget.theme,
              strings: _strings,
              isSelected: _selectedPlan == SubscriptionPlanType.monthly,
              isActiveSubscription: monthlyActive,
              activeExpirySubtitle: monthlyActive ? expirySubtitle : null,
              price: _monthlyPrice(state),
              trialPeriodDays: trialPeriodDays,
              onTap: () => _selectPlan(SubscriptionPlanType.monthly),
            ),
          const SizedBox(height: 18),
          _PurchaseButton(
            strings: _strings,
            theme: widget.theme,
            selectedPlan: _selectedPlan,
            isActivePlan: selectedPlanIsActive,
            isBusy: state.isBusy,
            hasTrial: trialPeriodDays != null,
            onTap: selectedPlanIsActive
                ? Navigator.of(context).pop
                : () => _onPurchase(state),
          ),
          const SizedBox(height: 12),
          _FooterLinks(
            theme: widget.theme,
            strings: _strings,
            onRestore: _onRestore,
            termsUrl: context.read<SubscriptionCubit>().config.termsUrl,
            privacyUrl: context.read<SubscriptionCubit>().config.privacyUrl,
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 8),
        ],
      ),
    );
  }

  Widget _buildCloseButton() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _canClose
          ? KeyedSubtree(
              key: const ValueKey('close_btn'),
              child: _TapFade(
              onTap: Navigator.of(context).pop,
              child: SizedBox.square(
                dimension: 20,
                child: Center(
                  child: SvgPicture.asset(
                    PaywallAssets.cross,
                    colorFilter: ColorFilter.mode(
                      widget.theme.iconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          )
          : SizedBox.square(
              key: const ValueKey('progress_ring'),
              dimension: 20,
              child: AnimatedBuilder(
                animation: _closeDelayController!,
                builder: (context, _) => CircularProgressIndicator(
                  value: _closeDelayController!.value,
                  color: widget.theme.primaryAccentColor.withValues(alpha: 0.6),
                  backgroundColor: widget.theme.textColor.withValues(alpha: 0.05),
                  strokeWidth: 2.0,
                ),
              ),
            ),
    );
  }

  String _yearlyActualPrice(SubscriptionState state) =>
      state.plans?.yearly.formattedPriceString ??
      state.plans?.yearly.package.storeProduct.priceString ??
      '-';

  String _weeklyPrice(SubscriptionState state) =>
      state.plans?.weekly?.formattedPriceString ??
      state.plans?.weekly?.package.storeProduct.priceString ??
      '-';

  String _monthlyPrice(SubscriptionState state) =>
      state.plans?.monthly?.formattedPriceString ??
      state.plans?.monthly?.package.storeProduct.priceString ??
      '-';

  void _selectPlan(SubscriptionPlanType plan) {
    setState(() => _selectedPlan = plan);
    HapticFeedback.mediumImpact();
  }

  void _onPurchase(SubscriptionState state) {
    final plans = state.plans;
    if (plans == null) return;
    _isRestoreOperation = false;
    final plan = _selectedPlan == SubscriptionPlanType.yearly
        ? plans.yearly
        : plans.shortPlan;
    context.read<SubscriptionCubit>().purchase(plan);
    HapticFeedback.mediumImpact();
  }

  void _onRestore() {
    _isRestoreOperation = true;
    context.read<SubscriptionCubit>().restore();
    HapticFeedback.lightImpact();
  }

  String _yearlyOriginalPrice(SubscriptionState state) {
    final plans = state.plans;
    if (plans == null) return '-';
    final short = plans.shortPlan;
    final shortProduct = short.package.storeProduct;
    final multiplier = short.type == SubscriptionPlanType.weekly ? 52 : 12;
    final fullYear = shortProduct.price * multiplier;
    final fmt = NumberFormat.simpleCurrency(
      name: shortProduct.currencyCode,
      decimalDigits: fullYear.truncateToDouble() == fullYear ? 0 : 2,
      locale: 'en',
    );
    return fmt.format(fullYear);
  }
}
