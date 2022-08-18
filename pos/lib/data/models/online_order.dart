import 'package:freezed_annotation/freezed_annotation.dart';

part 'online_order.freezed.dart';

@freezed
class OnlineOrder with _$OnlineOrder {
  const factory OnlineOrder({
    required String id,
    @Default(false) bool open,
    @Default(false) bool payed,
  }) = _OnlineOrder;
}
