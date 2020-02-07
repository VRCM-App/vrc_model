import 'package:json_annotation/json_annotation.dart';

part 'worldInfo.g.dart';

@JsonSerializable()
class WorldInfo {
    WorldInfo();

    String id;
    String name;
    String authorId;
    String authorName;
    num capacity;
    String imageUrl;
    String thumbnailImageUrl;
    String releaseStatus;
    String organization;
    List tags;
    num favorites;
    String created_at;
    String updated_at;
    String publicationDate;
    String labsPublicationDate;
    num visits;
    List unityPackages;
    num popularity;
    num heat;
    num occupants;
    String favoriteId;
    
    factory WorldInfo.fromJson(Map<String,dynamic> json) => _$WorldInfoFromJson(json);
    Map<String, dynamic> toJson() => _$WorldInfoToJson(this);
}
