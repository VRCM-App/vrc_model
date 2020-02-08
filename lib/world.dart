import 'package:dio/dio.dart';

import 'package:vrc_model/models/index.dart';
import 'package:vrc_model/vrc_model.dart';

mixin World on ModelBase {
  Future<WorldInfo> getWorldByID(String id) async {
    Response resp = await dio.get(
      "worlds/$id",
      queryParameters: {"apiKey": apiKey},
    );
    return WorldInfo.fromJson(resp?.data);
  }
}
