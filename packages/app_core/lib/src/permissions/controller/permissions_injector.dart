import 'package:app_core/src/entity/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_permission_type.dart';
import 'permissions_controller.dart';
import '../cubit/permissions_cubit.dart';

class PermissionsInjector extends StatefulWidget {
  const PermissionsInjector({
    super.key,
    required this.permissions,
    required this.child,
    this.deviceInfo,
  });

  final List<AppPermissionType> permissions;
  final Widget child;
  final DeviceInfo? deviceInfo;

  @override
  State<PermissionsInjector> createState() => _PermissionsInjectorState();
}

class _PermissionsInjectorState extends State<PermissionsInjector>
    with WidgetsBindingObserver {
  final cubit = PermissionsCubit();

  @override
  void initState() {
    super.initState();
    PermissionsController.attach(cubit, deviceInfo: widget.deviceInfo);
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      cubit.checkAll(widget.permissions);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      cubit.checkAll(widget.permissions);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(value: cubit, child: widget.child);
  }
}
