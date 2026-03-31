import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listox/presentation/shared/constants/app_assets.dart';
import 'package:listox/presentation/shared/localization/locale_keys.g.dart';
import 'package:listox/presentation/shared/utils/bottom_sheet_util.dart';
import 'package:animate_do_plus/animate_do_plus.dart';
import 'package:subscriptions/subscriptions.dart';
import 'package:ui_kit/ui_kit.dart';

class PremiumOverlayCard extends StatefulWidget {
  const PremiumOverlayCard({super.key});

  static final cardHeight = 108.h;
  static const borderRadius = BorderRadius.all(Radius.circular(24));
  static const shape = RoundedSuperellipseBorder(borderRadius: borderRadius);

  @override
  State<PremiumOverlayCard> createState() => _PremiumOverlayCardState();
}

class _PremiumOverlayCardState extends State<PremiumOverlayCard>
    with AutomaticKeepAliveClientMixin<PremiumOverlayCard> {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final shadowColor = context.theme.colorScheme.primary.withValues(
      alpha: 0.4,
    );

    final subscriptionState = SubscriptionScope.of(context);
    final isPremium = subscriptionState.isPremium;
    final expiry = subscriptionState.expiry;

    return BounceTapAnimation(
      onTap: () => AppBottomSheets.showPaywall(context),
      child: SurfaceContainer.ellipse(
        isBubbles: true,
        borderRadius: PremiumOverlayCard.borderRadius,
        shadowColor: shadowColor,
        elevation: 14.0,
        showBorder: false,
        stackChild: const Positioned(
          right: -80,
          top: 40,
          child: SizedBox.square(
            dimension: 200,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white12,
              ),
            ),
          ),
        ),
        child: DecoratedBox(
          decoration: ShapeDecoration(
            shape: PremiumOverlayCard.shape,
            gradient: isPremium
                ? AppColors.commonColoredGradientReversed(context)
                : AppColors.commonColoredGradient(context),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              right: 12.w,
              left: 6.w,
              top: 16.h,
              bottom: 12.h,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 120.w,
                  child: const LottieAnimation(
                    path: AppAssets.premiumChecklistAnimation,
                    animationStart: 0.04,
                  ),
                ),
                14.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isPremium
                            ? context.tr(LocaleKeys.account_premium_status_premium).toUpperCase()
                            : context.tr(LocaleKeys.account_premium_status_upgrade).toUpperCase(),
                        style: h5.copyWith(
                          color: context.lightTextColor,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.8,
                        ),
                      ),
                      4.verticalSpace,
                      Text(
                        expiry != null
                            ? context.tr(LocaleKeys.account_premium_expiry, namedArgs: {'date': DateFormat('yMMMMd').format(expiry)})
                            : context.tr(LocaleKeys.account_premium_upgrade_cta),
                        style: bodyM.copyWith(
                          color: context.lightTextColor.withValues(alpha: 0.7),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      10.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
