
import 'package:json_annotation/json_annotation.dart';

part 'cat_breed_model.g.dart';

@JsonSerializable()
class CatBreedResponse {
    final Weight? weight;
    final String? id;
    final String? name;
    final String? cfaUrl;
    final String? vetstreetUrl;
    final String? vcahospitalsUrl;
    final String? temperament;
    final String? origin;
    final String? countryCodes;
    final String? countryCode;
    final String? description;
    final String? lifeSpan;
    final int? indoor;
    final int? lap;
    final String? altNames;
    final int? adaptability;
    final int? affectionLevel;
    final int? childFriendly;
    final int? dogFriendly;
    final int? energyLevel;
    final int? grooming;
    final int? healthIssues;
    final int? intelligence;
    final int? sheddingLevel;
    final int? socialNeeds;
    final int? strangerFriendly;
    final int? vocalisation;
    final int? experimental;
    final int? hairless;
    final int? natural;
    final int? rare;
    final int? rex;
    final int? suppressedTail;
    final int? shortLegs;
    final String? wikipediaUrl;
    final int? hypoallergenic;
    final String? referenceImageId;
    final Image? image;

    CatBreedResponse({
        this.weight,
        this.id,
        this.name,
        this.cfaUrl,
        this.vetstreetUrl,
        this.vcahospitalsUrl,
        this.temperament,
        this.origin,
        this.countryCodes,
        this.countryCode,
        this.description,
        this.lifeSpan,
        this.indoor,
        this.lap,
        this.altNames,
        this.adaptability,
        this.affectionLevel,
        this.childFriendly,
        this.dogFriendly,
        this.energyLevel,
        this.grooming,
        this.healthIssues,
        this.intelligence,
        this.sheddingLevel,
        this.socialNeeds,
        this.strangerFriendly,
        this.vocalisation,
        this.experimental,
        this.hairless,
        this.natural,
        this.rare,
        this.rex,
        this.suppressedTail,
        this.shortLegs,
        this.wikipediaUrl,
        this.hypoallergenic,
        this.referenceImageId,
        this.image,
    });
 factory CatBreedResponse.fromJson(Map<String, dynamic> json) => _$CatBreedResponseFromJson(json);

    Map<String, dynamic> toJson() => _$CatBreedResponseToJson(this);

}
@JsonSerializable()
class Image {
    final String? id;
    final int? width;
    final int? height;
    final String? url;

    Image({
        this.id,
        this.width,
        this.height,
        this.url,
    });

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

    Map<String, dynamic> toJson() => _$ImageToJson(this);

}

@JsonSerializable()
class Weight {
    final String? imperial;
    final String? metric;

    Weight({
        this.imperial,
        this.metric,
    });

    factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);

    Map<String, dynamic> toJson() => _$WeightToJson(this);
}
