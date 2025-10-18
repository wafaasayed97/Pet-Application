import 'package:dartz/dartz.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/feature/home/data/data_source/home_api.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

class HomeRepo {
  final HomeApi homeApi;
  HomeRepo({required this.homeApi});

  Future<Either<Failure, List<CatBreedResponse>>> getCatBreeds() async {
    final response = await homeApi.getCatBreeds();
    return response.fold((error) => Left(error), (data) => Right(data));
  }
}
