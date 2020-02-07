import 'package:json_annotation/json_annotation.dart';

part 'apiConfig.g.dart';

@JsonSerializable()
class ApiConfig {
    ApiConfig();

    String apiKey;
    
    factory ApiConfig.fromJson(Map<String,dynamic> json) => _$ApiConfigFromJson(json);
    Map<String, dynamic> toJson() => _$ApiConfigToJson(this);
}
