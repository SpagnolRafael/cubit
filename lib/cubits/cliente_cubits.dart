import 'package:bloc/bloc.dart';
import 'package:bloc_repository/clients/clients.dart';
import 'package:bloc_repository/clients/clients_repository.dart';
import 'package:bloc_repository/cubits/client_cubit_states.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClientCubit extends Cubit<ClientCubitState> {
  final ClientRepository repository;
  ClientCubit({required this.repository})
      : super(const ClientCubitState.initial());

  getClientsFromRepository() async {
    try {
      emit(const ClientCubitState.loading());
      await Future.delayed(const Duration(seconds: 3));
      final clients = repository.load();
      emit(ClientCubitState.sucess(clients: clients));
    } catch (e) {
      emit(const ClientCubitState.error());
    }
  }

  addClientsToRepository(Client client) {
    try {
      if (client.name.length > 5) {
        emit(const ClientCubitState.error());
      } else {
        emit(const ClientCubitState.loading());
        final clients = repository.add(client);

        emit(ClientCubitState.sucess(clients: clients));
      }
    } catch (e) {
      emit(const ClientCubitState.error());
    }
  }

  removeClientsFromRepository({required Client client}) {
    try {
      emit(const ClientCubitState.loading());
      final clients = repository.remove(client);
      emit(ClientCubitState.sucess(clients: clients));
    } catch (e) {
      emit(const ClientCubitState.error());
    }
  }
}
