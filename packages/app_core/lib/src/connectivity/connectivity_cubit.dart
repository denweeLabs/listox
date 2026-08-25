import 'dart:async';

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

  StreamSubscription<bool>? _subscription;

  ConnectivityCubit() : super(ConnectivityState.initial()) {
    _service.checkConnectivityNow().then(_onChanged);
    _subscription = _service.connectivityState().listen(_onChanged);
  }

  void _onChanged(bool isConnected) {
    if (state.isConnected != isConnected) {
      debugPrint('ConnectivityCubit: isConnected=$isConnected');
      emit(state.copyWith(isConnected: isConnected));
    }
  }

  @override
  Future<void> close() async {
    _subscription?.cancel();
    super.close();
  }
}
