import 'package:pet_application/feature/home/data/models/cat_breed_model.dart';

sealed class HomeState{
  const HomeState();


}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {

  final List<CatBreedResponse> catBreeds;

  HomeSuccess(this.catBreeds);
}

final class Homefailure extends HomeState {
  final String message;
  Homefailure(this.message);
}
