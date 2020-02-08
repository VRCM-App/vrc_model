import 'index.dart';

class FriendList {
  FriendList();

  List<UserInfo> list = <UserInfo>[];

  factory FriendList.fromJson(List<dynamic> json) {
    List<UserInfo> l = <UserInfo>[];
    for (var item in json) {
      l.add(UserInfo.fromJson(item));
    }
    return FriendList()..list = l;
  }
}
