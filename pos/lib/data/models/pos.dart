import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos.freezed.dart';
part 'pos.g.dart';

@freezed
class POS with _$POS {
  const factory POS({
    required int id,
    required String name,
  }) = _POS;
  factory POS.fromJson(Map<String, dynamic> json) => _$POSFromJson(json);
}

@freezed
class POSResults with _$POSResults {
  const factory POSResults({
    @JsonKey(name: 'results') required List<POS> POSs,
  }) = _POSResults;
  factory POSResults.fromJson(Map<String, dynamic> json) =>
      _$POSResultsFromJson(json);
}


