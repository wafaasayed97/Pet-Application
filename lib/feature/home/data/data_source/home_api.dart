import 'package:dartz/dartz.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/core/network/endpoints.dart';
import 'package:pet_application/core/network/network_service.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

class HomeApi {
  final NetworkService networkService;

  HomeApi({required this.networkService});

  Future<Either<Failure, List<CatBreedResponse>>> getCatBreeds() async {
    try {
      final response = await networkService.getData(
        endPoint: EndPoints.allCatBreed,
      );

      return response.fold((error) => Left(error), (data) {
        try {
          final List<CatBreedResponse> breeds = (data as List)
              .map(
                (json) =>
                    CatBreedResponse.fromJson(json as Map<String, dynamic>),
              )
              .toList();
          return Right(breeds);
        } catch (e) {
          return Left(Failure('Failed to parse cat breeds: ${e.toString()}'));
        }
      });
    } catch (e) {
      return Left(Failure('Network error: ${e.toString()}'));
    }
  }
}
