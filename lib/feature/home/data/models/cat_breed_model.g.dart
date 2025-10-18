// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatBreedResponse _$CatBreedResponseFromJson(Map<String, dynamic> json) =>
    CatBreedResponse(
      weight: json['weight'] == null
          ? null
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String?,
      cfaUrl: json['cfaUrl'] as String?,
      vetstreetUrl: json['vetstreetUrl'] as String?,
      vcahospitalsUrl: json['vcahospitalsUrl'] as String?,
      temperament: json['temperament'] as String?,
      origin: json['origin'] as String?,
      countryCodes: json['countryCodes'] as String?,
      countryCode: json['countryCode'] as String?,
      description: json['description'] as String?,
      lifeSpan: json['lifeSpan'] as String?,
      indoor: (json['indoor'] as num?)?.toInt(),
      lap: (json['lap'] as num?)?.toInt(),
      altNames: json['altNames'] as String?,
      adaptability: (json['adaptability'] as num?)?.toInt(),
      affectionLevel: (json['affectionLevel'] as num?)?.toInt(),
      childFriendly: (json['childFriendly'] as num?)?.toInt(),
      dogFriendly: (json['dogFriendly'] as num?)?.toInt(),
      energyLevel: (json['energyLevel'] as num?)?.toInt(),
      grooming: (json['grooming'] as num?)?.toInt(),
      healthIssues: (json['healthIssues'] as num?)?.toInt(),
      intelligence: (json['intelligence'] as num?)?.toInt(),
      sheddingLevel: (json['sheddingLevel'] as num?)?.toInt(),
      socialNeeds: (json['socialNeeds'] as num?)?.toInt(),
      strangerFriendly: (json['strangerFriendly'] as num?)?.toInt(),
      vocalisation: (json['vocalisation'] as num?)?.toInt(),
      experimental: (json['experimental'] as num?)?.toInt(),
      hairless: (json['hairless'] as num?)?.toInt(),
      natural: (json['natural'] as num?)?.toInt(),
      rare: (json['rare'] as num?)?.toInt(),
      rex: (json['rex'] as num?)?.toInt(),
      suppressedTail: (json['suppressedTail'] as num?)?.toInt(),
      shortLegs: (json['shortLegs'] as num?)?.toInt(),
      wikipediaUrl: json['wikipediaUrl'] as String?,
      hypoallergenic: (json['hypoallergenic'] as num?)?.toInt(),
      referenceImageId: json['referenceImageId'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatBreedResponseToJson(CatBreedResponse instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'id': instance.id,
      'name': instance.name,
      'cfaUrl': instance.cfaUrl,
      'vetstreetUrl': instance.vetstreetUrl,
      'vcahospitalsUrl': instance.vcahospitalsUrl,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'countryCodes': instance.countryCodes,
      'countryCode': instance.countryCode,
      'description': instance.description,
      'lifeSpan': instance.lifeSpan,
      'indoor': instance.indoor,
      'lap': instance.lap,
      'altNames': instance.altNames,
      'adaptability': instance.adaptability,
      'affectionLevel': instance.affectionLevel,
      'childFriendly': instance.childFriendly,
      'dogFriendly': instance.dogFriendly,
      'energyLevel': instance.energyLevel,
      'grooming': instance.grooming,
      'healthIssues': instance.healthIssues,
      'intelligence': instance.intelligence,
      'sheddingLevel': instance.sheddingLevel,
      'socialNeeds': instance.socialNeeds,
      'strangerFriendly': instance.strangerFriendly,
      'vocalisation': instance.vocalisation,
      'experimental': instance.experimental,
      'hairless': instance.hairless,
      'natural': instance.natural,
      'rare': instance.rare,
      'rex': instance.rex,
      'suppressedTail': instance.suppressedTail,
      'shortLegs': instance.shortLegs,
      'wikipediaUrl': instance.wikipediaUrl,
      'hypoallergenic': instance.hypoallergenic,
      'referenceImageId': instance.referenceImageId,
      'image': instance.image,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
  id: json['id'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
  'id': instance.id,
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
  imperial: json['imperial'] as String?,
  metric: json['metric'] as String?,
);

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
  'imperial': instance.imperial,
  'metric': instance.metric,
};
