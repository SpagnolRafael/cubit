import 'package:bloc_repository/clients/clients.dart';
import 'package:bloc_repository/cubits/client_cubit_states.dart';
import 'package:bloc_repository/cubits/cliente_cubits.dart';
import 'package:bloc_repository/di/instances.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/client_cubit_states.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  late final ClientCubit cubit;
  late final TextEditingController _nomeController = TextEditingController();
  late final TextEditingController _cpfController = TextEditingController();
  List<Client> clientList = [];

  @override
  void initState() {
    super.initState();
    cubit = getIt.get<ClientCubit>();
    cubit.getClientsFromRepository();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista Clientes"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Container(
                        color: Colors.grey.shade400,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _nomeController,
                                decoration: const InputDecoration(
                                    hintText: "Nome",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 3,
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _cpfController,
                                decoration: const InputDecoration(
                                    hintText: "Cpf",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 3,
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  // bloc.add(AddClientEvent(
                                  //   client: Client(
                                  //       name: _nomeController.text,
                                  //       cpf: _cpfController.text),
                                  // ));
                                  cubit.addClientsToRepository(
                                    Client(
                                        name: _nomeController.text,
                                        cpf: _cpfController.text),
                                  );
                                  _nomeController.text = "";
                                  _cpfController.text = "";
                                  Navigator.pop(context);
                                },
                                child: const Text("Adicionar"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.person_add),
            ),
          )
        ],
      ),
      body: BlocConsumer<ClientCubit, ClientCubitState>(
        bloc: cubit,
        listener: (context, state) {
          state.maybeWhen(
              error: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      duration: Duration(seconds: 2),
                      content: Text("Erro: Nome maior que 5 caracteres"))),
              sucess: (callBackClientList) {
                clientList = callBackClientList;
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text(clientList[index].name),
                subtitle: Text(clientList[index].cpf),
                trailing: IconButton(
                  onPressed: () {
                    // bloc.add(RemoveClientEvent(client: clientList[index]));
                    cubit.removeClientsFromRepository(
                        client: clientList[index]);
                  },
                  icon: const Icon(Icons.delete),
                ),
              ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: clientList.length,
            ),
          );
        },
      ),
    );
  }
}
