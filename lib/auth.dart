import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:vrc_model/models/index.dart';
import 'package:vrc_model/vrc_model.dart';

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

  // 2FA验证
  Future<bool> auth2FA(String code) async {
    Response resp =
        await dio.post("auth/twofactorauth/totp/verify", data: {"code": code});
    return resp?.data["verified"];
  }

  Future<AuthInfo> userInfo() async {
    Response resp = await dio.get(
      "auth/user",
    );
    return AuthInfo.fromJson(resp?.data);
  }

  // 获取token
  Future<String> auth() async {
    Response resp = await dio.get(
      "auth",
    );
    return resp?.data["ok"] ? resp?.data["token"] : null;
  }
}
