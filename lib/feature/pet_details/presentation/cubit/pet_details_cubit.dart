

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_application/feature/pet_details/data/repo/pet_details_repo.dart';
import 'package:pet_application/feature/pet_details/presentation/cubit/pet_details_state.dart';

class PetDetailsCubit extends Cubit<PetDetailsState> {
  final PetDetailsRepo petDetailsRepo;
  PetDetailsCubit(this.petDetailsRepo) : super(PetDetailsInitial());

  Future<void> getPetDetails(String petId) async {
    emit(PetDetailsLoading());
    final response = await petDetailsRepo.getPetDetails(petId);
    response.fold(
      (error) => emit(PetDetailsFailure(error.message)),
      (data) => emit(PetDetailsSuccess(data)),
    );
  }
}
