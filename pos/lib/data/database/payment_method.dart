import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/branch.dart';

part 'payment_method.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class PaymentMethod {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(fromJson: customFromJson, name: 'method_type')
  final String? methodType;
  //TODO: add custom object logic
  @JsonKey(name: 'journal_id', fromJson: customFromJson)
  dynamic odooJournalID;
  String? get odooJournalIDFromdb =>
      odooJournalID == null ? null : json.encode(odooJournalID);
  set odooJournalIDFromdb(String? value) {
    if (value == null) {
      odooJournalID = null;
    } else {
      odooJournalID = JournalID.fromJson(json.decode(value));
    }
  }

  @JsonKey(fromJson: customFromJson, name: 'identify_customer')
  final bool? identifyCustomer;
  String? jornalName;
  PaymentMethod({
    required this.odooId,
    this.id = 0,
    this.name,
    this.identifyCustomer,
    this.methodType,
    this.odooJournalID,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}

@JsonSerializable()
class PaymentMethodMapper {
  final List<PaymentMethod> result;

  PaymentMethodMapper({required this.result});

  factory PaymentMethodMapper.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodMapperFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodMapperToJson(this);
}
