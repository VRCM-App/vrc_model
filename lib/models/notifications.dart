import 'index.dart';

class NotificationList {
  NotificationList();

  List<Notification> list = <Notification>[];

  factory NotificationList.fromJson(List<dynamic> json) {
    List<Notification> l = <Notification>[];
    for (var i = 0; i < json.length; i++) {
      Notification info = Notification.fromJson(json[i]);
      l.add(info);
    }
    return NotificationList()..list = l;
  }
}
