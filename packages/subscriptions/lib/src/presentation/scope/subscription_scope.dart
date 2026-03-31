import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/subscription_repo_impl.dart';
import '../../data/source/subscription_local_source_impl.dart';
import '../../domain/entity/subscription_config.dart';
import '../bloc/subscription_cubit.dart';

class SubscriptionScope extends StatefulWidget {
  const SubscriptionScope({
    super.key,
    required this.config,
    required this.child,
  });

  final SubscriptionConfig config;
  final Widget child;

  static SubscriptionState of(BuildContext context) =>
      context.watch<SubscriptionCubit>().state;

  /// Use inside event handlers (onTap, etc.) where `listen: false` is required.
  static SubscriptionState read(BuildContext context) =>
      context.read<SubscriptionCubit>().state;

  @override
  State<SubscriptionScope> createState() => _SubscriptionScopeState();
}

class _SubscriptionScopeState extends State<SubscriptionScope> {
  late final SubscriptionCubit _cubit;

  @override
  void initState() {
    super.initState();
    debugPrint('Subscriptions injected! entitlementId:${widget.config.entitlementId}; isDebug:${widget.config.isDebug}; envPrefix:${widget.config.envPrefix}');
    _cubit = _buildCubit();
    _cubit.init();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(value: _cubit, child: widget.child);
  }

  SubscriptionCubit _buildCubit() {
    final localSource = SubscriptionLocalSourceImpl(
      envPrefix: widget.config.envPrefix,
    );
    final repo = SubscriptionRepoImpl(
      config: widget.config,
      localSource: localSource,
    );

    return SubscriptionCubit(config: widget.config, subscriptionRepo: repo);
  }
}
