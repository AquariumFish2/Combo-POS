import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'coupon.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Coupon {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(fromJson: customFromJson, name: 'product_id')
  final int? productId;
  final bool? active;
  @JsonKey(fromJson: customFromJson, name: 'coupon_apply_times')
  final int? couponApplyTimes;
  @JsonKey(fromJson: customFromJson, name: 'applied_app')
  final String? appliedApp;
  @JsonKey(fromJson: customFromJson, name: 'c_barcode')
  final String? cBarcode;
  @JsonKey(fromJson: customFromJson, name: 'amount_type')
  final String? amountType;
  @JsonKey(fromJson: customFromJson, name: 'apply_coupon_on')
  final String? applyCouponOn;
  @JsonKey(fromJson: customFromJson, name: 'issue_date')
  final String? issueDate;
  @JsonKey(name: 'exp_dat_show')
  final bool? expDatShow;
  @JsonKey(fromJson: customFromJson, name: 'expiry_date')
  final String? expiryDate;
  @JsonKey(fromJson: customFromJson)
  final double? amount;
  @JsonKey(name: 'partner_true')
  final bool? partnerTrue;
  @JsonKey(fromJson: customFromJson, name: 'partner_id')
  final int? partnerId;
  @JsonKey(name: 'is_categ')
  final bool? isCateg;
  @JsonKey(fromJson: customFromJson, name: 'categ_ids')
  @Property(type: PropertyType.byteVector)
  final List<int>? categIds;
  @JsonKey(fromJson: customFromJson, name: 'max_amount')
  final double? maxAmount;
  @JsonKey(fromJson: customFromJson, name: 'coupon_desc')
  final String? couponDesc;
  @JsonKey(name: 'description')
  final bool? description;
  Coupon(
      {required this.odooId,
      this.id = 0,
      this.name,
      this.active,
      this.amount,
      this.amountType,
      this.appliedApp,
      this.applyCouponOn,
      this.cBarcode,
      this.categIds,
      this.couponApplyTimes,
      this.couponDesc,
      this.description,
      this.partnerTrue,
      this.expDatShow,
      this.expiryDate,
      this.isCateg,
      this.issueDate,
      this.maxAmount,
      this.partnerId,
      this.productId,
      t});

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);

  Map<String, dynamic> toJson() => _$CouponToJson(this);
}

@JsonSerializable()
class CouponMapper {
  final List<Coupon> result;

  CouponMapper({required this.result});

  factory CouponMapper.fromJson(Map<String, dynamic> json) =>
      _$CouponMapperFromJson(json);

  Map<String, dynamic> toJson() => _$CouponMapperToJson(this);
}
