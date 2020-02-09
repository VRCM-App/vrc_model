import 'package:json_annotation/json_annotation.dart';

part 'authInfo.g.dart';

@JsonSerializable()
class AuthInfo {
    AuthInfo();

    String id;
    String username;
    String displayName;
    String bio;
    List bioLinks;
    List pastDisplayNames;
    bool hasEmail;
    bool hasPendingEmail;
    String email;
    String obfuscatedEmail;
    String obfuscatedPendingEmail;
    bool emailVerified;
    bool hasBirthday;
    bool unsubscribe;
    List friends;
    List friendGroupNames;
    String currentAvatarImageUrl;
    String currentAvatarThumbnailImageUrl;
    String currentAvatar;
    String currentAvatarAssetUrl;
    String accountDeletionDate;
    num acceptedTOSVersion;
    String steamId;
    String oculusId;
    bool hasLoggedInFromClient;
    String homeLocation;
    bool twoFactorAuthEnabled;
    String status;
    String statusDescription;
    String state;
    List tags;
    String developerType;
    String last_login;
    String last_platform;
    bool allowAvatarCopying;
    bool isFriend;
    String friendKey;
    List onlineFriends;
    List activeFriends;
    List offlineFriends;
    List requiresTwoFactorAuth;
    
    factory AuthInfo.fromJson(Map<String,dynamic> json) => _$AuthInfoFromJson(json);
    Map<String, dynamic> toJson() => _$AuthInfoToJson(this);
}
