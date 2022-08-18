import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/line.dart';
part 'extra.g.dart';
@Entity()
@JsonSerializable()
class Extra {
  int id;
  String name;
  double price;
  bool isSelected;
  int productId;
  List<int>? extraProducts;
  final line = ToOne<Line>();
  Extra({
    this.id=0,
    required this.productId,
    required this.name,
    required this.price,
    required this.isSelected,
    this.extraProducts,
  });
  toggleSelectionExtra() {
    isSelected = !isSelected;
  }
}
