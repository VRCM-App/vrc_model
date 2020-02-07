import 'index.dart';

class FriendList {
  FriendList();

  List<UserInfo> list = <UserInfo>[];

  factory FriendList.fromJson(List<dynamic> json) {
    List<UserInfo> l = <UserInfo>[];
    for (var i = 0; i < json.length; i++) {
      UserInfo info = UserInfo.fromJson(json[i]);
      l.add(info);
    }
    return FriendList()..list = l;
  }
}
