import 'package:get_it/get_it.dart';
import 'package:rrtesttask/data/in_memory_account_storage.dart';
import 'package:rrtesttask/domain/account_repository.dart';

import 'blocs/home/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => HomeBloc(sl()));
  // Repository
  sl.registerSingleton<IAccountRepository>(InMemoryAccountStorage());
}
