import 'package:freezed_annotation/freezed_annotation.dart';

part 'floor_table.freezed.dart';
part 'floor_table.g.dart';

@freezed
class FloorTable with _$FloorTable {
  const factory FloorTable({
    required String id,
    required String name,
    int? seats,
    @JsonKey(name: 'barcode_url') bool? barcodeUrl,
    @JsonKey(name: 'qr_image') String? qrImage,
    @JsonKey(name: 'pricelist_id') bool? pricelistId,
    bool? locked,
    @JsonKey(name: 'user_ids') List<int>? userIds,
    String? shape,
    String? color,
    @JsonKey(name: 'position_h') int? positionH,
    @JsonKey(name: 'position_V') int? positionV,
    int? width,
    int? height,
  }) = _FloorTable;
  factory FloorTable.fromJson(Map<String, dynamic> json) => _$FloorTableFromJson(json);
}

@freezed
class FloorTableResults with _$FloorTableResults {
  const factory FloorTableResults({
    @JsonKey(name: 'results') required List<FloorTable> FloorTables,
  }) = _FloorTableResults;
  factory FloorTableResults.fromJson(Map<String, dynamic> json) =>
      _$FloorTableResultsFromJson(json);
}
