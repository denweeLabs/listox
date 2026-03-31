import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:subscriptions/subscriptions.dart';

Future<void> showSubscriptionPaywallBottomSheet(
  BuildContext context, {
  required Widget topAnimation,
  required List<PaywallBulletPoint> bulletPoints,
  required PaywallTheme theme,
  required MediaQueryData mediaQuery,
  String? locale,
}) {
  final cubit = context.read<SubscriptionCubit>();

  return showModalBottomSheet<void>(
    context: context,
    useSafeArea: false,
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
    backgroundColor: Colors.transparent,
    builder: (_) => BlocProvider.value(
      value: cubit,
      child: PaywallPage(
        topAnimation: topAnimation,
        bulletPoints: bulletPoints,
        theme: theme,
        locale: locale,
        mediaQuery: mediaQuery,
      ),
    ),
  );
}
