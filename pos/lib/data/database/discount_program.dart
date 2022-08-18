import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'discount_program.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class DiscountProgram {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(
    fromJson: customFromJson,
  )
  final String? name;
  @JsonKey(fromJson: customFromJson, name: 'discount_type')
  final String? discountType;
  @JsonKey( name: 'require_customer')
  final bool? requireCustomer;
  @JsonKey( name: 'customer_restricted')
  final bool? customerRestricted;
  @JsonKey(fromJson: customFromJson)
  final double? amount;
  @JsonKey(fromJson: customFromJson, name: 'pos_category_ids')
  @Property(type: PropertyType.byteVector)
  final List<int>? posCategoryIds;
  @JsonKey(fromJson: customFromJson, name: 'pos_applied')
  @Property(type: PropertyType.byteVector)
  final List<int>? posApplied;
  DiscountProgram({
    required this.odooId,
    this.id = 0,
    this.amount,
    this.customerRestricted,
    this.discountType,
    this.name,
    this.posApplied,
    this.posCategoryIds,
    this.requireCustomer,
  });

  factory DiscountProgram.fromJson(Map<String, dynamic> json) =>
      _$DiscountProgramFromJson(json);

  Map<String, dynamic> toJson() => _$DiscountProgramToJson(this);
}

@JsonSerializable()
class DiscountProgramMapper {
  final List<DiscountProgram> result;

  DiscountProgramMapper({required this.result});

  factory DiscountProgramMapper.fromJson(Map<String, dynamic> json) =>
      _$DiscountProgramMapperFromJson(json);

  Map<String, dynamic> toJson() => _$DiscountProgramMapperToJson(this);
}
