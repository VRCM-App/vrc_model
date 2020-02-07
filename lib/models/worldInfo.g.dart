// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldInfo _$WorldInfoFromJson(Map<String, dynamic> json) {
  return WorldInfo()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..authorId = json['authorId'] as String
    ..authorName = json['authorName'] as String
    ..capacity = json['capacity'] as num
    ..imageUrl = json['imageUrl'] as String
    ..thumbnailImageUrl = json['thumbnailImageUrl'] as String
    ..releaseStatus = json['releaseStatus'] as String
    ..organization = json['organization'] as String
    ..tags = json['tags'] as List
    ..favorites = json['favorites'] as num
    ..created_at = json['created_at'] as String
    ..updated_at = json['updated_at'] as String
    ..publicationDate = json['publicationDate'] as String
    ..labsPublicationDate = json['labsPublicationDate'] as String
    ..visits = json['visits'] as num
    ..unityPackages = json['unityPackages'] as List
    ..popularity = json['popularity'] as num
    ..heat = json['heat'] as num
    ..occupants = json['occupants'] as num
    ..favoriteId = json['favoriteId'] as String;
}

Map<String, dynamic> _$WorldInfoToJson(WorldInfo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'capacity': instance.capacity,
      'imageUrl': instance.imageUrl,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'releaseStatus': instance.releaseStatus,
      'organization': instance.organization,
      'tags': instance.tags,
      'favorites': instance.favorites,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'publicationDate': instance.publicationDate,
      'labsPublicationDate': instance.labsPublicationDate,
      'visits': instance.visits,
      'unityPackages': instance.unityPackages,
      'popularity': instance.popularity,
      'heat': instance.heat,
      'occupants': instance.occupants,
      'favoriteId': instance.favoriteId
    };
