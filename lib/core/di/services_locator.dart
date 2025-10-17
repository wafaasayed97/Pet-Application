import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pet_application/core/cache/hive/hive_helper.dart';
import 'package:pet_application/core/network/network_service.dart';
import 'package:pet_application/core/network/session_manager.dart';
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

    // _initRegister();

    // // _initOtp();
    // _initLogin();

    // _initMainScree();

    // _initHome();

    // _initForgetPassword();

    // _initProfile();

    // _initEditProfile();
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

  // void _initRegister() {
  //   sl.registerLazySingleton(() => RegisterApi(networkService: sl()));
  //   sl.registerLazySingleton(() => RegisterRepo(registerApi: sl()));
  //   sl.registerFactory(() => RegisterCubit(sl()));
  // }

  // void _initOtp() {
  //   sl.registerLazySingleton(() => OtpApi(sl()));
  //   sl.registerLazySingleton(() => OtpRepo(sl()));
  //   sl.registerFactory(() => OtpCubit(sl()));
  // }

  // void _initLogin() {
  //   sl.registerLazySingleton(() => LoginApi(networkService: sl()));
  //   sl.registerLazySingleton(() => LoginRepo( loginApi: sl()));
  //   sl.registerFactory(() => LoginCubit(sl(), sl()));
  //   sl.registerLazySingleton<LocalAuthentication>(() => LocalAuthentication());
  // }

  // void _initMainScree() {
  //   sl.registerFactory(() => MainCubit(sl()));
  // }
  // void _initHome(){
  //   sl.registerFactory(() => HomeCubit(sl()));
  //   sl.registerLazySingleton(()=>HomeRepo(homeApi: sl()));
  //   sl.registerLazySingleton(()=>HomeApi(networkService: sl()));

  // }
  // void _initForgetPassword() {
  //   sl.registerLazySingleton(() => ForgetPasswordApi(networkService: sl()));
  //   sl.registerLazySingleton(() => ForgetPasswordRepo(api: sl()));
  //   sl.registerFactory(() => ForgetPasswordCubit(sl()));
  // }

  // void _initProfile() {
  //   sl.registerLazySingleton(() => ProfileApi(sl()));
  //   sl.registerLazySingleton(() => ProfileRepo(sl(), sl()));
  //   sl.registerLazySingleton(() => ProfileLocal(sl()));
  //   sl.registerFactory(() => ProfileCubit(sl()));
  // }

  // void _initEditProfile() {
  //   sl.registerLazySingleton(() => EditProfileApi( networkService: sl()));
  //   sl.registerLazySingleton(() => EditProfileRepo( api: sl(), local: sl()));
  //   sl.registerLazySingleton(() => EditProfileLocal(sl()));
  //   sl.registerFactory(() => EditProfileCubit(sl()));
  // }
}
