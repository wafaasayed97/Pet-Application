

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_application/feature/home/data/repo/cat_breed_repo.dart';
import 'package:pet_application/feature/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final CatBreedRepo catBreedRepo ;
  HomeCubit(this.catBreedRepo) : super(HomeInitial());

  Future<void> getCatBreeds() async {
    emit(HomeLoading());
    final response = await catBreedRepo.getCatBreeds();
    response.fold((error) => emit(Homefailure(error.message)), (data) => emit(HomeSuccess(data)));
  }
}
