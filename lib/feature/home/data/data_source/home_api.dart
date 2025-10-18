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
          print('Raw API Response: $data'); // Debug

          // Convert List<dynamic> to List<CatBreedResponse>
          final List<CatBreedResponse> breeds = (data as List).map((json) {
            print('Parsing JSON: $json'); // Debug each item
            return CatBreedResponse.fromJson(json as Map<String, dynamic>);
          }).toList();

          print('Parsed ${breeds.length} breeds'); // Debug
          if (breeds.isNotEmpty) {
            print(
              'First breed: ${breeds[0].name}, Image URL: ${breeds[0].image?.url}',
            );
          }

          return Right(breeds);
        } catch (e, stackTrace) {
          print('Parse error: $e');
          print('Stack trace: $stackTrace');
          return Left(Failure('Failed to parse cat breeds: ${e.toString()}'));
        }
      });
    } catch (e) {
      print('Network error: $e');
      return Left(Failure('Network error: ${e.toString()}'));
    }
  }
}
