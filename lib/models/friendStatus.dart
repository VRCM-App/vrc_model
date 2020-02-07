import 'package:json_annotation/json_annotation.dart';

part 'friendStatus.g.dart';

@JsonSerializable()
class FriendStatus {
    FriendStatus();

    bool isFriend;
    bool outgoingRequest;
    bool incomingRequest;
    
    factory FriendStatus.fromJson(Map<String,dynamic> json) => _$FriendStatusFromJson(json);
    Map<String, dynamic> toJson() => _$FriendStatusToJson(this);
}
