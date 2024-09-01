import 'package:flutter_tech_interview/application/auth/auth_bloc.dart';
import 'package:flutter_tech_interview/application/splash/splash_bloc.dart';
import 'package:flutter_tech_interview/application/user_detailed/user_detailed_bloc.dart';
import 'package:flutter_tech_interview/application/users/users_bloc.dart';
import 'package:flutter_tech_interview/domain/core/sqflite/sqflite_service.dart';
import 'package:flutter_tech_interview/infrastructure/core/dio_config.dart';
import 'package:flutter_tech_interview/infrastructure/users/users_facade.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void configureSingleton() {
  getIt.registerLazySingleton<SqfliteService>(() => SqfliteService());
  getIt.registerLazySingleton<DioConfig>(() => DioConfig());

  getIt.registerFactory<SplashBloc>(() => SplashBloc());
  getIt.registerFactory<AuthBloc>(() => AuthBloc());
  getIt.registerFactory<UsersBloc>(() => UsersBloc());
  getIt.registerFactory<UserDetailedBloc>(() => UserDetailedBloc());

  getIt.registerLazySingleton<IUsersFacade>(() => UsersFacade());
}
