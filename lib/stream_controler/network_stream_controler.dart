import 'dart:async';

import 'package:custom_list_card/api/network_state.dart';
import 'package:custom_list_card/api/network_state_enum.dart';

class NetworkStreamController {
  StreamController<NetworkState> _networkStateStreamController =
      StreamController<NetworkState>.broadcast();

  Stream<NetworkState> get networkStateListener =>
      _networkStateStreamController.stream;

  Sink<NetworkState> get _networkStateIn => _networkStateStreamController.sink;

  void setSuccessState({dynamic data}) {
    _networkStateIn
        .add(NetworkState(state: NetworkStateEnum.ON_SUCCESS, data: data));
  }

  void setFailureState(String errorMessage) {
    _networkStateIn.add(NetworkState(
        state: NetworkStateEnum.ON_FAILURE, message: errorMessage));
  }

  void setLoadingState() {
    _networkStateIn.add(NetworkState(state: NetworkStateEnum.LOADING));
  }

  void setInitialState() {
    _networkStateIn.add(NetworkState(state: NetworkStateEnum.INITIAL));
  }

  void dispose() {
    _networkStateStreamController.close();
  }
}
