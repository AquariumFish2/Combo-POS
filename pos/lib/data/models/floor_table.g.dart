// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FloorTable _$$_FloorTableFromJson(Map<String, dynamic> json) =>
    _$_FloorTable(
      id: json['id'] as String,
      name: json['name'] as String,
      seats: json['seats'] as int?,
      barcodeUrl: json['barcode_url'] as bool?,
      qrImage: json['qr_image'] as String?,
      pricelistId: json['pricelist_id'] as bool?,
      locked: json['locked'] as bool?,
      userIds:
          (json['user_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      shape: json['shape'] as String?,
      color: json['color'] as String?,
      positionH: json['position_h'] as int?,
      positionV: json['position_V'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$$_FloorTableToJson(_$_FloorTable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'seats': instance.seats,
      'barcode_url': instance.barcodeUrl,
      'qr_image': instance.qrImage,
      'pricelist_id': instance.pricelistId,
      'locked': instance.locked,
      'user_ids': instance.userIds,
      'shape': instance.shape,
      'color': instance.color,
      'position_h': instance.positionH,
      'position_V': instance.positionV,
      'width': instance.width,
      'height': instance.height,
    };

_$_FloorTableResults _$$_FloorTableResultsFromJson(Map<String, dynamic> json) =>
    _$_FloorTableResults(
      FloorTables: (json['results'] as List<dynamic>)
          .map((e) => FloorTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FloorTableResultsToJson(
        _$_FloorTableResults instance) =>
    <String, dynamic>{
      'results': instance.FloorTables,
    };
