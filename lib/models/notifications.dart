import 'index.dart';

class NotificationList {
  NotificationList();

  List<Notification> list = <Notification>[];

  factory NotificationList.fromJson(List<dynamic> json) {
    List<Notification> l = <Notification>[];
    for (var item in json) {
      l.add(Notification.fromJson(item));
    }
    return NotificationList()..list = l;
  }
}
