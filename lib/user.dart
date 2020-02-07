import 'package:dio/dio.dart';

import 'models/friends.dart';
import 'models/index.dart';
import 'vrc_model.dart';

mixin User on ModelBase {
  // 好友列表
  Future<List<UserInfo>> friends(int offset, int n, bool offline) async {
    Response resp = await dio.get(
      "auth/user/friends",
      queryParameters: {
        "offset": offset,
        "n": n,
        "offline": offline,
      },
    );
    return FriendList.fromJson(resp?.data).list;
  }

  // 通过ID获取用户信息
  Future<UserInfo> getUserByID(String id) async {
    Response resp = await dio.get(
      "users/$id",
    );
    return UserInfo.fromJson(resp?.data);
  }

  // 好友状态
  Future<FriendStatus> friendStatus(String id) async {
    Response resp = await dio.get(
      "user/$id/friendStatus",
    );
    return FriendStatus.fromJson(resp?.data);
  }

  Future<bool> sendUserModeration(String id, String type) async {
    Response resp = await dio.post(
      "auth/user/playermoderations",
      data: {"moderated": id, "type": type},
      options: Options(
        headers: {"Content-Type": "application/json"},
      ),
    );
    return resp?.statusCode == 200;
  }

  Future<bool> sendUserUnModeration(String id, String type) async {
    Response resp = await dio.put(
      "auth/user/unplayermoderate",
      data: {"moderated": id, "type": type},
      options: Options(
        headers: {"Content-Type": "application/json"},
      ),
    );
    return resp?.statusCode == 200;
  }

  // 发送好友请求
  Future<bool> sendFriendRequest(String id) async {
    Response resp = await dio.post("user/$id/friendRequest");
    return resp?.statusCode == 200;
  }

  // 删除好友
  Future<bool> unFriend(String id) async {
    Response resp = await dio.delete("auth/user/friends/$id");
    return resp?.statusCode == 200;
  }

  // 处理好友请求
  Future<bool> acceptFriendRequest(String id) async {
    Response resp = await dio.put("auth/user/notifications/$id/accept");
    return resp?.statusCode == 200;
  }
}
