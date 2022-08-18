import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'status_tab.freezed.dart';

@freezed
class StatusTab with _$StatusTab {
  const factory StatusTab({
    required String id,
    required String text,
    @Default(false) selected,
  }) = _StatusTab;
}
