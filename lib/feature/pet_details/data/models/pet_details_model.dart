
import 'package:json_annotation/json_annotation.dart';

part 'pet_details_model.g.dart';

@JsonSerializable()
class PetDetailsModel {
    final int? id;
    final String? name;
    final String? weight;
    final String? height;
    final String? lifeSpan;
    final String? bredFor;
    final String? breedGroup;

    PetDetailsModel({
        this.id,
        this.name,
        this.weight,
        this.height,
        this.lifeSpan,
        this.bredFor,
        this.breedGroup,
    });



  factory PetDetailsModel.fromJson(Map<String, dynamic> json) => _$PetDetailsModelFromJson(json);

  Map<String,dynamic> toJson() => _$PetDetailsModelToJson(this);
}