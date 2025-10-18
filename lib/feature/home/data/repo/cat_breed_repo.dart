import 'package:dartz/dartz.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/feature/home/data/data_source/cat_breed_api.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

class CatBreedRepo {
  final CatBreedApi catBreedApi;
  CatBreedRepo({required this.catBreedApi});

  Future<Either<Failure, List<CatBreedResponse>>> getCatBreeds() async {
    final response = await catBreedApi.getCatBreeds();
    return response.fold((error) => Left(error), (data) => Right(data));
  }
}
