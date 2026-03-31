import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_permission.dart';
import '../app_permission_type.dart';
import '../../entity/app_permission_status.dart';
import 'permissions_state.dart';

class PermissionsCubit extends Cubit<PermissionsState> {
  PermissionsCubit() : super(const PermissionsState());

  Future<void> checkAll(List<AppPermissionType> types) async {
    for (final type in types) {
      await check(type);
    }
  }

  Future<AppPermissionStatus> check(AppPermissionType type) async {
    final status = await AppPermission.of(type).status();
    emit(state.withStatus(type, status));
    debugPrint('Permission: $type → ${status}');
    return status;
  }

  Future<AppPermissionStatus> request(AppPermissionType type) async {
    final status = await AppPermission.of(type).request();
    emit(state.withStatus(type, status));
    debugPrint('Permission: $type → $status (requested)');
    return status;
  }
}
