
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../feature/data/repo/app_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<AppRepoImpl>(
      AppRepoImpl(
    getIt.get<ApiService>(),
  ));
}