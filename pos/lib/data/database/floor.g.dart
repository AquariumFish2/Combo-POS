// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Floor _$FloorFromJson(Map<String, dynamic> json) => Floor(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      backgroundColor: customFromJson(json['background_color']),
      posConfigId: customFromJson(json['pos_config_id']),
      pricelistId: customFromJson(json['pricelist_id']),
      tableIdsFromJson: customFromJson(json['table_ids']),
      width: customFromJson(json['width']),
      height: customFromJson(json['height']),
      gotRatio: json['gotRatio'] as bool? ?? false,
    );

Map<String, dynamic> _$FloorToJson(Floor instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'pos_config_id': instance.posConfigId,
      'pricelist_id': instance.pricelistId,
      'background_color': instance.backgroundColor,
      'width': instance.width,
      'height': instance.height,
      'gotRatio': instance.gotRatio,
      'table_ids': instance.tableIdsFromJson,
    };

TableId _$TableIdFromJson(Map<String, dynamic> json) => TableId(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      barcodeUrl: customFromJson(json['barcode_url']),
      color: customFromJson(json['color']),
      height: customFromJson(json['height']),
      locked: json['locked'] as bool?,
      positionH: customFromJson(json['position_h']),
      positionV: customFromJson(json['position_v']),
      pricelistId: customFromJson(json['pricelist_id']),
      qrImage: customFromJson(json['qr_image']),
      seats: customFromJson(json['seats']),
      shape: customFromJson(json['shape']),
      userIds: customFromJson(json['user_ids']),
      width: customFromJson(json['width']),
      chosen: json['chosen'] as bool? ?? false,
    );

Map<String, dynamic> _$TableIdToJson(TableId instance) => <String, dynamic>{
      'id': instance.odooId,
      '__': instance.id,
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
      'position_v': instance.positionV,
      'width': instance.width,
      'height': instance.height,
      'chosen': instance.chosen,
    };

FloorMapper _$FloorMapperFromJson(Map<String, dynamic> json) => FloorMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Floor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FloorMapperToJson(FloorMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
