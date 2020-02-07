// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthInfo _$AuthInfoFromJson(Map<String, dynamic> json) {
  return AuthInfo()
    ..id = json['id'] as String
    ..username = json['username'] as String
    ..displayName = json['displayName'] as String
    ..bio = json['bio'] as String
    ..bioLinks = json['bioLinks'] as List
    ..pastDisplayNames = json['pastDisplayNames'] as List
    ..hasEmail = json['hasEmail'] as bool
    ..hasPendingEmail = json['hasPendingEmail'] as bool
    ..email = json['email'] as String
    ..obfuscatedEmail = json['obfuscatedEmail'] as String
    ..obfuscatedPendingEmail = json['obfuscatedPendingEmail'] as String
    ..emailVerified = json['emailVerified'] as bool
    ..hasBirthday = json['hasBirthday'] as bool
    ..unsubscribe = json['unsubscribe'] as bool
    ..friends = json['friends'] as List
    ..friendGroupNames = json['friendGroupNames'] as List
    ..currentAvatarImageUrl = json['currentAvatarImageUrl'] as String
    ..currentAvatarThumbnailImageUrl =
        json['currentAvatarThumbnailImageUrl'] as String
    ..currentAvatar = json['currentAvatar'] as String
    ..currentAvatarAssetUrl = json['currentAvatarAssetUrl'] as String
    ..accountDeletionDate = json['accountDeletionDate'] as String
    ..acceptedTOSVersion = json['acceptedTOSVersion'] as num
    ..steamId = json['steamId'] as String
    ..oculusId = json['oculusId'] as String
    ..hasLoggedInFromClient = json['hasLoggedInFromClient'] as bool
    ..homeLocation = json['homeLocation'] as String
    ..twoFactorAuthEnabled = json['twoFactorAuthEnabled'] as bool
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
    ..onlineFriends = json['onlineFriends'] as List
    ..activeFriends = json['activeFriends'] as List
    ..offlineFriends = json['offlineFriends'] as List;
}

Map<String, dynamic> _$AuthInfoToJson(AuthInfo instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'displayName': instance.displayName,
      'bio': instance.bio,
      'bioLinks': instance.bioLinks,
      'pastDisplayNames': instance.pastDisplayNames,
      'hasEmail': instance.hasEmail,
      'hasPendingEmail': instance.hasPendingEmail,
      'email': instance.email,
      'obfuscatedEmail': instance.obfuscatedEmail,
      'obfuscatedPendingEmail': instance.obfuscatedPendingEmail,
      'emailVerified': instance.emailVerified,
      'hasBirthday': instance.hasBirthday,
      'unsubscribe': instance.unsubscribe,
      'friends': instance.friends,
      'friendGroupNames': instance.friendGroupNames,
      'currentAvatarImageUrl': instance.currentAvatarImageUrl,
      'currentAvatarThumbnailImageUrl': instance.currentAvatarThumbnailImageUrl,
      'currentAvatar': instance.currentAvatar,
      'currentAvatarAssetUrl': instance.currentAvatarAssetUrl,
      'accountDeletionDate': instance.accountDeletionDate,
      'acceptedTOSVersion': instance.acceptedTOSVersion,
      'steamId': instance.steamId,
      'oculusId': instance.oculusId,
      'hasLoggedInFromClient': instance.hasLoggedInFromClient,
      'homeLocation': instance.homeLocation,
      'twoFactorAuthEnabled': instance.twoFactorAuthEnabled,
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
      'onlineFriends': instance.onlineFriends,
      'activeFriends': instance.activeFriends,
      'offlineFriends': instance.offlineFriends
    };
