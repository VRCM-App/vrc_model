library vrc_model;

import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'package:vrc_model/auth.dart';
import 'package:vrc_model/notification.dart';
import 'package:vrc_model/user.dart';
import 'package:vrc_model/world.dart';

class ModelBase {
  ModelBase({this.appDocPath, this.httpProxy}) {
    _init();
  }

  PersistCookieJar cookieJar;
  Dio dio = new Dio(
    BaseOptions(
      baseUrl: 'https://api.vrchat.cloud/api/1/',
      sendTimeout: 10,
    ),
  );
  String apiKey;
  String appDocPath;
  String httpProxy;

  void _init() async {
    if (appDocPath != null) {
      cookieJar = PersistCookieJar(dir: appDocPath + "/.cookies/");
      dio.interceptors.add(CookieManager(cookieJar));
    }
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      if (httpProxy != null) {
        client.findProxy = (uri) {
          return 'PROXY ' + httpProxy;
        };
      }
    };
    dio.interceptors.add(InterceptorsWrapper(onError: (DioError e) {
      print("\n================== Request ==================");
      print("[${e.request.method}] ${e.request.path}");
      print("type = ${e.type}");
      print("message = ${e.message}");
      print("respData = ${e.response.data}");
      print("\n=============================================");
    }));
  }
}

class VRCModel extends ModelBase with Auth, User, World, Notification {
  VRCModel({this.appDocPath, this.httpProxy})
      : super(appDocPath: appDocPath, httpProxy: httpProxy);

  String appDocPath;
  String httpProxy;

  Future<String> config() async {
    Response resp = await dio.get("config");
    return resp?.data["apiKey"];
  }
}
