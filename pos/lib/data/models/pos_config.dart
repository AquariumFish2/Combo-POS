import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_config.freezed.dart';
part 'pos_config.g.dart';

@freezed
class POSConfig with _$POSConfig {
  const factory POSConfig({
    required int id,
    required String name,
  }) = _POSConfig;
  factory POSConfig.fromJson(Map<String, dynamic> json) =>
      _$POSConfigFromJson(json);
}

@freezed
class POSConfigResults with _$POSConfigResults {
  const factory POSConfigResults({
    @JsonKey(name: 'results') required List<POSConfig> POSConfigs,
  }) = _POSConfigResults;
  factory POSConfigResults.fromJson(Map<String, dynamic> json) =>
      _$POSConfigResultsFromJson(json);
}
