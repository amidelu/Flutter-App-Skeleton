import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'connectivity_state.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final Connectivity _connectivity;
  late final Stream<List<ConnectivityResult>> _connectivityStream;

  ConnectivityCubit(this._connectivity) : super(ConnectivityInitial()) {
    _connectivityStream = _connectivity.onConnectivityChanged;
    _monitorConnectivity();
  }

  void _monitorConnectivity() {
    _connectivityStream.listen((result) {
      for (ConnectivityResult data in result) {
        if (data == ConnectivityResult.none) {
          emit(ConnectivityOffline());
        } else {
          emit(ConnectivityOnline());
        }
      }
    });
  }
}
