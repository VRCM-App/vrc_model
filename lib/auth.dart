import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

import 'models/index.dart';
import 'vrc_model.dart';

mixin Auth on ModelBase {
  // 用户登录
  Future<AuthInfo> login(String username, String password) async {
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    cookieJar?.deleteAll();
    Response resp = await dio.get(
      "auth/user",
      options: Options(headers: {"Authorization": basicAuth}),
    );
    return AuthInfo.fromJson(resp?.data);
  }

  // 登出当前用户
  Future logout() async {
    await dio.put(
      "logout",
    );
  }

  // 获取token
  Future<String> auth() async {
    Response resp = await dio.get(
      "auth",
    );
    return resp?.data["ok"] ? resp?.data["token"] : null;
  }
}