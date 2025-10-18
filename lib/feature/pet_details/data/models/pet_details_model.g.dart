// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetDetailsModel _$PetDetailsModelFromJson(Map<String, dynamic> json) =>
    PetDetailsModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      lifeSpan: json['lifeSpan'] as String?,
      bredFor: json['bredFor'] as String?,
      breedGroup: json['breedGroup'] as String?,
    );

Map<String, dynamic> _$PetDetailsModelToJson(PetDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'height': instance.height,
      'lifeSpan': instance.lifeSpan,
      'bredFor': instance.bredFor,
      'breedGroup': instance.breedGroup,
    };
