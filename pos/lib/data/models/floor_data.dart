import 'package:freezed_annotation/freezed_annotation.dart';

part 'floor_data.freezed.dart';
part 'floor_data.g.dart';

@freezed
class FloorData with _$FloorData {
  const factory FloorData({
    required int id,
    required String name,
    @JsonKey(name: 'pos_config_id')  int? posConfigId,
    @JsonKey(name: 'pricelist_id')  bool? pricelistId,
    @JsonKey(name: 'background_color')  String? backgroundColor,
    @JsonKey(name: 'table_ids')  List<Map<String,dynamic>>? tableIds,
    //TODO list<FloorTable> tableIds 
  }) = _FloorData;
  factory FloorData.fromJson(Map<String, dynamic> json) =>
      _$FloorDataFromJson(json);
}

@freezed
class FloorDataResults with _$FloorDataResults {
  const factory FloorDataResults({
    @JsonKey(name: 'results') required List<FloorData> floorDatas,
  }) = _FloorDataResults;
  factory FloorDataResults.fromJson(Map<String, dynamic> json) =>
      _$FloorDataResultsFromJson(json);
}
