import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {
    Notification();

    String id;
    String senderUserId;
    String senderUsername;
    String type;
    String message;
    String details;
    bool seen;
    String created_at;
    
    factory Notification.fromJson(Map<String,dynamic> json) => _$NotificationFromJson(json);
    Map<String, dynamic> toJson() => _$NotificationToJson(this);
}
