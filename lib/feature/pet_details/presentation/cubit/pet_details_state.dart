
import 'package:pet_application/feature/pet_details/data/models/pet_details_model.dart';

sealed class PetDetailsState {
  const PetDetailsState();

}

final class PetDetailsInitial extends PetDetailsState {}

final class PetDetailsLoading extends PetDetailsState {}

final class PetDetailsSuccess extends PetDetailsState {
  final PetDetailsModel petDetailsModel;
  PetDetailsSuccess(this.petDetailsModel);
}
final class PetDetailsFailure extends PetDetailsState {
  final String message;
  PetDetailsFailure(this.message);
}