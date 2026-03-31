import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'connectivity_service.dart';
import 'connectivity_state.dart';

export 'connectivity_state.dart';

extension ConnectivityX on BuildContext {
  bool get isConnected => read<ConnectivityCubit>().state.isConnected;
}

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final ConnectivityService _service = ConnectivityService();

  StreamSubscription<ConnectivityResult>? _subscription;

  ConnectivityCubit() : super(ConnectivityState.initial()) {
    _subscription = _service.connectivityState().listen(_onChanged);
  }

  Future<void> _onChanged(ConnectivityResult result) async {
    if (state.connectivityResult != result) {
      debugPrint('ConnectivityCubit: $result');
      emit(state.copyWith(connectivityResult: result));
    }
  }

  @override
  Future<void> close() async {
    _subscription?.cancel();
    super.close();
  }
}
