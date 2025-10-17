import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_application/core/cache/secure_storage/secure_storage.dart';
import 'package:pet_application/core/di/services_locator.dart';
import 'package:pet_application/core/helpers/app_bloc_observer.dart';
import 'package:pet_application/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServicesLocator().init();
  Bloc.observer = AppBlocObserver();

  await sl<SecureStorage>().clearOnFreshInstall(sl());
  runApp(MyApp());
}
