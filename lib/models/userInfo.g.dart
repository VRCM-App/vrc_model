// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo()
    ..id = json['id'] as String
    ..username = json['username'] as String
    ..displayName = json['displayName'] as String
    ..bio = json['bio'] as String
    ..bioLinks = json['bioLinks'] as List
    ..currentAvatarImageUrl = json['currentAvatarImageUrl'] as String
    ..currentAvatarThumbnailImageUrl =
        json['currentAvatarThumbnailImageUrl'] as String
    ..status = json['status'] as String
    ..statusDescription = json['statusDescription'] as String
    ..state = json['state'] as String
    ..tags = json['tags'] as List
    ..developerType = json['developerType'] as String
    ..last_login = json['last_login'] as String
    ..last_platform = json['last_platform'] as String
    ..allowAvatarCopying = json['allowAvatarCopying'] as bool
    ..isFriend = json['isFriend'] as bool
    ..friendKey = json['friendKey'] as String
    ..location = json['location'] as String
    ..worldId = json['worldId'] as String
    ..instanceId = json['instanceId'] as String;
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'displayName': instance.displayName,
      'bio': instance.bio,
      'bioLinks': instance.bioLinks,
      'currentAvatarImageUrl': instance.currentAvatarImageUrl,
      'currentAvatarThumbnailImageUrl': instance.currentAvatarThumbnailImageUrl,
      'status': instance.status,
      'statusDescription': instance.statusDescription,
      'state': instance.state,
      'tags': instance.tags,
      'developerType': instance.developerType,
      'last_login': instance.last_login,
      'last_platform': instance.last_platform,
      'allowAvatarCopying': instance.allowAvatarCopying,
      'isFriend': instance.isFriend,
      'friendKey': instance.friendKey,
      'location': instance.location,
      'worldId': instance.worldId,
      'instanceId': instance.instanceId
    };
