// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendStatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendStatus _$FriendStatusFromJson(Map<String, dynamic> json) {
  return FriendStatus()
    ..isFriend = json['isFriend'] as bool
    ..outgoingRequest = json['outgoingRequest'] as bool
    ..incomingRequest = json['incomingRequest'] as bool;
}

Map<String, dynamic> _$FriendStatusToJson(FriendStatus instance) =>
    <String, dynamic>{
      'isFriend': instance.isFriend,
      'outgoingRequest': instance.outgoingRequest,
      'incomingRequest': instance.incomingRequest
    };
