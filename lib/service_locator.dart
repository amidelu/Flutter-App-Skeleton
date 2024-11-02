import 'package:flutter_opl/data/auth/repository/auth.dart';
import 'package:flutter_opl/data/auth/source/auth_api_service.dart';
import 'package:flutter_opl/domain/auth/repository/auth.dart';
import 'package:flutter_opl/domain/auth/usecase/is_logged_in.dart';
import 'package:flutter_opl/domain/auth/usecase/signin.dart';
import 'package:get_it/get_it.dart';

import 'core/network/dio_client.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  // Services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // Use cases
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());
  sl.registerSingleton<SignInUseCase>(SignInUseCase());
}