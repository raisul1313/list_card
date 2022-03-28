
import 'network_state_enum.dart';

class NetworkState {
  NetworkStateEnum state;
  String? message;
  dynamic? data;

  NetworkState({
    required this.state,
    this.message,
    this.data,
  });
}
