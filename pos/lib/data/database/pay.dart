import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/order.dart';
part 'pay.g.dart';

@Entity()
@JsonSerializable()
class Pay {
  int id;
  int odooId;
  bool? cash;
  bool? bank;
  bool? others;
  double money;
  double change;
  double aquirded;
  String type;
  final ToOne<Order1> order = ToOne<Order1>();
  Pay({
    this.id = 0,
    required this.odooId,
    required this.money,
    required this.type,
    required this.aquirded,
    required this.change,
    this.bank,
    this.cash,
    this.others,
  });
  factory Pay.fromJson(Map<String, dynamic> json) => _$PayFromJson(json);

  Map<String, dynamic> toJson() => _$PayToJson(this);
}
