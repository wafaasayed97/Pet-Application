import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_application/core/cache/secure_storage/secure_storage.dart';
import 'package:pet_application/core/di/services_locator.dart';
import 'package:pet_application/core/network/network_service.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this.networkService) : super(MainInitial());
  final NetworkService networkService;
  Future<void> initialize({
    bool isFirstLaunch = true,
    int initialIndex = 0,
  }) async {
    final token = await sl<SecureStorage>().read(SecureStorageKeys.userToken);
    await Future.delayed(Duration(milliseconds: 300));
    final isGuest = token == null;
    if (isGuest) {
      emit(MainLoaded(index: 1, isGuest: isGuest));
    } else {
      emit(MainLoaded(index: initialIndex, isGuest: isGuest));
    }
  }

  void changeTab(int index) {
    if (state is MainLoaded) {
      final current = state as MainLoaded;
      emit(current.copyWith(index: index));
    }
  }
}
