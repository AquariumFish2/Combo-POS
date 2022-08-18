import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'local_order.freezed.dart';

@freezed
class LocalOrder with _$LocalOrder {
  const factory LocalOrder({
    required String id,
    @Default(false) bool open,
    @Default(false) bool payed,
  }) = _LocalOrder;
}
