import 'package:bord_project/src/screens/auth/logic/bloc/auth_bloc.dart';
import 'package:bord_project/src/screens/auth/logic/data/datasource/datasource.dart';
import 'package:bord_project/src/screens/auth/logic/data/repository/repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initGetIt() async {
  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt()));

  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));

  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl());
}

