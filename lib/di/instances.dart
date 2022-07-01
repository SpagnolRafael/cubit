import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'instances.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

// void setup() {
//   getIt.registerLazySingleton<ClientRepository>(() => ClientRepository());
//   getIt.registerLazySingleton<ClientCubit>(
//       () => ClientCubit(repository: getIt.get<ClientRepository>()));
// }
