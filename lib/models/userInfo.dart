import 'package:json_annotation/json_annotation.dart';

part 'userInfo.g.dart';

@JsonSerializable()
class UserInfo {
    UserInfo();

    String id;
    String username;
    String displayName;
    String bio;
    List bioLinks;
    String currentAvatarImageUrl;
    String currentAvatarThumbnailImageUrl;
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
    String location;
    String worldId;
    String instanceId;
    
    factory UserInfo.fromJson(Map<String,dynamic> json) => _$UserInfoFromJson(json);
    Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
