import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pet_application/core/cache/hive/hive_helper.dart';
import 'package:pet_application/core/network/network_service.dart';
import 'package:pet_application/core/network/session_manager.dart';
import 'package:pet_application/feature/home/data/data_source/home_api.dart';
import 'package:pet_application/feature/home/data/repo/home_repo.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../cache/preferences_storage/preferences_storage.dart';
import '../cache/secure_storage/secure_storage.dart';

final sl = GetIt.instance;

class ServicesLocator {
  Future<void> init() async {
    _initFlutterSecureStorage();

    await _initSharedPreferencesStorage();

    _initDioService();

    _initSessionManager();

    _initHiveHelper();

    _initHome();
  }

  Future<void> _initSharedPreferencesStorage() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => PreferencesStorage(sharedPreferences));
  }

  void _initFlutterSecureStorage() {
    final secureStorage = FlutterSecureStorage();
    sl.registerLazySingleton(() => SecureStorage(secureStorage));
  }

  void _initSessionManager() {
    sl.registerLazySingleton(() => SessionManager(sl(), sl(), sl()));
  }

  void _initDioService() {
    sl.registerLazySingleton(() => NetworkService(Dio()));
  }

  void _initHiveHelper() async {
    final hiveHelper = HiveHelper();
    await hiveHelper.init();
    sl.registerLazySingleton(() => hiveHelper);
  }

  void _initHome() {
    sl.registerLazySingleton(() => HomeApi(networkService: sl()));
    sl.registerLazySingleton(() => HomeRepo(homeApi: sl()));
    sl.registerFactory(() => HomeCubit(sl()));
  }
 
}
