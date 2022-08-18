import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/extra.dart';
import 'package:pos/data/database/note.dart';
import 'package:pos/data/database/pos.dart';

import 'order.dart';

part 'line.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
  @JsonKey(name: '__')
class Line {
  int id;
  @JsonKey(name: 'product_id')
  final int productId;
  @JsonKey(fromJson: customFromJson, name: 'full_product_name')
  final String? fullProductName;
  @JsonKey(fromJson: customFromJson)
  String? qty;
  @JsonKey(fromJson: customFromJson, name: 'price_unit')
  final String? priceUnit;
  @JsonKey(fromJson: customFromJson, name: 'price_subtotal')
  final String? priceSubtotal;
  @JsonKey(fromJson: customFromJson, name: 'price_subtotal_incl')
  final String? priceSubtotalIncl;
  final ToOne<Order1> order= ToOne<Order1>();
  @Backlink()
  final extras = ToMany<Extra>();
  @Backlink()
  final notes = ToMany<Note>();
  bool gotDataOnce;
  int productOBid;
  Line({
    required this.productId,
    required this.productOBid,
    this.id = 0,
    this.fullProductName,
    this.priceSubtotal,
    this.priceSubtotalIncl,
    this.priceUnit,
    this.qty,
    this.gotDataOnce=false,
  });

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);

  Map<String, dynamic> toJson() => _$LineToJson(this);
}

@JsonSerializable()
class LineMapper {
  final List<Line> result;

  LineMapper({required this.result});

  factory LineMapper.fromJson(Map<String, dynamic> json) =>
      _$LineMapperFromJson(json);

  Map<String, dynamic> toJson() => _$LineMapperToJson(this);
}
