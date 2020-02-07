// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return Notification()
    ..id = json['id'] as String
    ..senderUserId = json['senderUserId'] as String
    ..senderUsername = json['senderUsername'] as String
    ..type = json['type'] as String
    ..message = json['message'] as String
    ..details = json['details'] as String
    ..seen = json['seen'] as bool
    ..created_at = json['created_at'] as String;
}

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderUserId': instance.senderUserId,
      'senderUsername': instance.senderUsername,
      'type': instance.type,
      'message': instance.message,
      'details': instance.details,
      'seen': instance.seen,
      'created_at': instance.created_at
    };
