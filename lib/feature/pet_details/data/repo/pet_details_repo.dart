import 'package:dartz/dartz.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/feature/pet_details/data/data_source/pet_details_api.dart';
import 'package:pet_application/feature/pet_details/data/models/pet_details_model.dart';

class PetDetailsRepo {
  final PetDetailsApi petDetailsApi;

  PetDetailsRepo({required this.petDetailsApi});

  Future<Either<Failure,PetDetailsModel>> getPetDetails(String petId)async {
    final response = await petDetailsApi.getPetDetails(petId);

    return response.fold((error) => Left(error), (data) => Right(data));
    
  }
}
