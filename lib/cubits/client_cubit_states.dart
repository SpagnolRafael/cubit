import 'package:bloc_repository/clients/clients.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_cubit_states.freezed.dart';

@freezed
class ClientCubitState with _$ClientCubitState {
  const factory ClientCubitState.initial() = _Initial;
  const factory ClientCubitState.loading() = _Loading;
  const factory ClientCubitState.error() = _Error;
  const factory ClientCubitState.sucess({
    required List<Client> clients,
  }) = _Sucess;
}

// class ClientCubitInitialState extends ClientCubitState {
//   List<Client> clients = [];
//   ClientCubitInitialState() : super();
// }

// class ClientCubitSucessState extends ClientCubitState {
//   List<Client> clients;
//   ClientCubitSucessState({required this.clients}) : super();
// }

// class ClientCubitLoadingState extends ClientCubitState {}

// class ClientCubitErrorState extends ClientCubitState {}
