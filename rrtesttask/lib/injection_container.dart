import 'package:get_it/get_it.dart';
import 'package:rrtesttask/data/ad_auth.dart';
import 'package:rrtesttask/data/dataverse_account_storage.dart';
// import 'package:rrtesttask/data/in_memory_account_storage.dart';
import 'package:rrtesttask/domain/account_repository.dart';
import 'package:rrtesttask/domain/auth_facade.dart';

import 'blocs/home/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => HomeBloc(sl(), sl()));
  // Auth
  sl.registerSingleton<IAuthFacade>(AdAuth());
  // Repository
  // sl.registerSingleton<IAccountRepository>(InMemoryAccountStorage());
  sl.registerSingleton<IAccountRepository>(DataverseAccountStorage(sl()));
}
