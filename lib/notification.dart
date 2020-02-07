import 'package:dio/dio.dart';

import 'models/notifications.dart';
import 'vrc_model.dart';

mixin Notification on ModelBase {
  // 同意好友请求
  Future<bool> acceptFriendRequest(String nid) async {
    Response resp = await dio.put("auth/user/notifications/$nid/accept");
    return resp?.statusCode == 200;
  }

  // 删除通知
  Future<bool> deleteNotification(String nid) async {
    Response resp = await dio.delete("auth/user/notifications/$nid/hide");
    return resp?.statusCode == 200;
  }

  // 已读通知?
  Future<bool> seenNotification(String nid) async {
    Response resp = await dio.put("auth/user/notifications/$nid/see");
    return resp?.statusCode == 200;
  }

  // 删除所有通知
  Future<bool> clearNotification() async {
    Response resp = await dio.put("auth/user/notifications/clear");
    return resp?.statusCode == 200;
  }

  // 获取所有通知
  Future<NotificationList> allNotifications() async {
    Response resp = await dio.get("auth/user/notifications");
    return NotificationList.fromJson(resp?.data);
  }
}
