import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/line.dart';
import 'package:pos/data/database/pay.dart';
import 'package:pos/data/database/pos_order_type.dart';

part 'order.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Order1 {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'mobile_ref')
  final String? mobileRef;

  @JsonKey(fromJson: customFromJson)
  final String? name;

  @JsonKey(fromJson: customFromJson, name: 'session_id')
  final int? sessionId;

  @JsonKey(fromJson: customFromJson, name: 'user_id')
  final int? userId;

  @JsonKey(fromJson: customFromJson, name: 'amount_tax')
  final String? amountTax;

  @JsonKey(fromJson: customFromJson, name: 'amount_total')
  String? amountTotal;

  @JsonKey(fromJson: customFromJson, name: 'amount_paid')
  final String? amountPaid;

  @JsonKey(fromJson: customFromJson, name: 'amount_return')
  final String? amountReturn;

  @JsonKey(fromJson: customFromJson, name: 'order_type_id')
  int? orderTypeId;

  @JsonKey(fromJson: customFromJson, name: 'note')
  final String? note;

  @JsonKey(fromJson: customFromJson, name: 'coupon_id')
  int? couponId;

  @JsonKey(fromJson: customFromJson, name: 'returnReasonId')
  final int? returnReasonId;

  @JsonKey(fromJson: customFromJson, name: 'branch_id')
  final int? branchId;

  @JsonKey(fromJson: customFromJson, name: 'pos_reference')
  final String? posReference;

  @JsonKey(fromJson: customFromJson, name: 'pricelist_id')
  final int? pricelistId;

  final int? orderNum;

  @JsonKey(fromJson: customFromJson)
  @Backlink()
  final lines = ToMany<Line>();

  @Backlink()
  final payments = ToMany<Pay>();

  @JsonKey(fromJson: customFromJson)
  String? time;
  @JsonKey(fromJson: customFromJson, name: 'order_type')
  String orderType;
  @JsonKey(fromJson: customFromJson)
  DateTime? date;
  @JsonKey(fromJson: customFromJson, name: 'customer_id')
  int? customerId;
  @JsonKey(fromJson: customFromJson, name: 'table_id')
  int? tableId;
  @JsonKey(fromJson: customFromJson, name: 'floor_id')
  int? floorId;
  @JsonKey(fromJson: customFromJson, name: 'pos_id')
  int? posId;
  Order1({
    this.id = 0,
    this.name,
    this.amountPaid,
    this.amountReturn,
    this.amountTax,
    this.amountTotal,
    this.branchId,
    this.couponId,
    this.orderTypeId,
    this.mobileRef,
    this.note,
    this.posReference,
    this.pricelistId,
    this.returnReasonId,
    this.sessionId,
    this.userId,
    this.orderType = 'Dine-in',
    this.posId,
    this.time,
    this.date,
    this.orderNum,
  });

  factory Order1.fromJson(Map<String, dynamic> json) => _$Order1FromJson(json);

  Map<String, dynamic> toJson() => _$Order1ToJson(this);
}

@JsonSerializable()
class Order1Mapper {
  final List<Order1> result;

  Order1Mapper({required this.result});

  factory Order1Mapper.fromJson(Map<String, dynamic> json) =>
      _$Order1MapperFromJson(json);

  Map<String, dynamic> toJson() => _$Order1MapperToJson(this);
}
