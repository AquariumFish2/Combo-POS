// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalOrderTearOff {
  const _$LocalOrderTearOff();

  _LocalOrder call(
      {required String id, bool open = false, bool payed = false}) {
    return _LocalOrder(
      id: id,
      open: open,
      payed: payed,
    );
  }
}

/// @nodoc
const $LocalOrder = _$LocalOrderTearOff();

/// @nodoc
mixin _$LocalOrder {
  String get id => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  bool get payed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalOrderCopyWith<LocalOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalOrderCopyWith<$Res> {
  factory $LocalOrderCopyWith(
          LocalOrder value, $Res Function(LocalOrder) then) =
      _$LocalOrderCopyWithImpl<$Res>;
  $Res call({String id, bool open, bool payed});
}

/// @nodoc
class _$LocalOrderCopyWithImpl<$Res> implements $LocalOrderCopyWith<$Res> {
  _$LocalOrderCopyWithImpl(this._value, this._then);

  final LocalOrder _value;
  // ignore: unused_field
  final $Res Function(LocalOrder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? open = freezed,
    Object? payed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      payed: payed == freezed
          ? _value.payed
          : payed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LocalOrderCopyWith<$Res> implements $LocalOrderCopyWith<$Res> {
  factory _$LocalOrderCopyWith(
          _LocalOrder value, $Res Function(_LocalOrder) then) =
      __$LocalOrderCopyWithImpl<$Res>;
  @override
  $Res call({String id, bool open, bool payed});
}

/// @nodoc
class __$LocalOrderCopyWithImpl<$Res> extends _$LocalOrderCopyWithImpl<$Res>
    implements _$LocalOrderCopyWith<$Res> {
  __$LocalOrderCopyWithImpl(
      _LocalOrder _value, $Res Function(_LocalOrder) _then)
      : super(_value, (v) => _then(v as _LocalOrder));

  @override
  _LocalOrder get _value => super._value as _LocalOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? open = freezed,
    Object? payed = freezed,
  }) {
    return _then(_LocalOrder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      payed: payed == freezed
          ? _value.payed
          : payed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocalOrder with DiagnosticableTreeMixin implements _LocalOrder {
  const _$_LocalOrder(
      {required this.id, this.open = false, this.payed = false});

  @override
  final String id;
  @JsonKey()
  @override
  final bool open;
  @JsonKey()
  @override
  final bool payed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalOrder(id: $id, open: $open, payed: $payed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalOrder'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('open', open))
      ..add(DiagnosticsProperty('payed', payed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalOrder &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.open, open) &&
            const DeepCollectionEquality().equals(other.payed, payed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(open),
      const DeepCollectionEquality().hash(payed));

  @JsonKey(ignore: true)
  @override
  _$LocalOrderCopyWith<_LocalOrder> get copyWith =>
      __$LocalOrderCopyWithImpl<_LocalOrder>(this, _$identity);
}

abstract class _LocalOrder implements LocalOrder {
  const factory _LocalOrder({required String id, bool open, bool payed}) =
      _$_LocalOrder;

  @override
  String get id;
  @override
  bool get open;
  @override
  bool get payed;
  @override
  @JsonKey(ignore: true)
  _$LocalOrderCopyWith<_LocalOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
