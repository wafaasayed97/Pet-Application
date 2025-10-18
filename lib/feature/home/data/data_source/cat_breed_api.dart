import 'package:dartz/dartz.dart';
import 'package:pet_application/core/error/failure.dart';
import 'package:pet_application/core/network/endpoints.dart';
import 'package:pet_application/core/network/network_service.dart';
import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

class CatBreedApi{

  final NetworkService networkService ;

  CatBreedApi({required this.networkService});

  Future<Either< Failure, List<CatBreedResponse>>> getCatBreeds()async {

    final response =await networkService.getData(endPoint: EndPoints.allCatBreed);
    return response.fold((error) => Left(error), (data) => Right(data));
  }
}