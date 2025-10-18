import 'package:dartz/dartz.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/core/network/endpoints.dart';
import 'package:pet_application/core/network/network_service.dart';
import 'package:pet_application/feature/pet_details/data/models/pet_details_model.dart';

class PetDetailsApi {
  final NetworkService networkService;

  PetDetailsApi({required this.networkService});

  Future<Either<Failure,PetDetailsModel>> getPetDetails(String petId) async {
    final response = await networkService.getData(
      endPoint: "${EndPoints.catById}$petId",
    );

    return response.fold(
      (error) => Left(error),
      (data) => Right(PetDetailsModel.fromJson(data as Map<String, dynamic>)),
    );
  }
}
