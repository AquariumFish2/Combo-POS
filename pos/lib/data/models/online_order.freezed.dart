// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'online_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnlineOrderTearOff {
  const _$OnlineOrderTearOff();

  _OnlineOrder call(
      {required String id, bool open = false, bool payed = false}) {
    return _OnlineOrder(
      id: id,
      open: open,
      payed: payed,
    );
  }
}

/// @nodoc
const $OnlineOrder = _$OnlineOrderTearOff();

/// @nodoc
mixin _$OnlineOrder {
  String get id => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  bool get payed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnlineOrderCopyWith<OnlineOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineOrderCopyWith<$Res> {
  factory $OnlineOrderCopyWith(
          OnlineOrder value, $Res Function(OnlineOrder) then) =
      _$OnlineOrderCopyWithImpl<$Res>;
  $Res call({String id, bool open, bool payed});
}

/// @nodoc
class _$OnlineOrderCopyWithImpl<$Res> implements $OnlineOrderCopyWith<$Res> {
  _$OnlineOrderCopyWithImpl(this._value, this._then);

  final OnlineOrder _value;
  // ignore: unused_field
  final $Res Function(OnlineOrder) _then;

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
abstract class _$OnlineOrderCopyWith<$Res>
    implements $OnlineOrderCopyWith<$Res> {
  factory _$OnlineOrderCopyWith(
          _OnlineOrder value, $Res Function(_OnlineOrder) then) =
      __$OnlineOrderCopyWithImpl<$Res>;
  @override
  $Res call({String id, bool open, bool payed});
}

/// @nodoc
class __$OnlineOrderCopyWithImpl<$Res> extends _$OnlineOrderCopyWithImpl<$Res>
    implements _$OnlineOrderCopyWith<$Res> {
  __$OnlineOrderCopyWithImpl(
      _OnlineOrder _value, $Res Function(_OnlineOrder) _then)
      : super(_value, (v) => _then(v as _OnlineOrder));

  @override
  _OnlineOrder get _value => super._value as _OnlineOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? open = freezed,
    Object? payed = freezed,
  }) {
    return _then(_OnlineOrder(
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

class _$_OnlineOrder implements _OnlineOrder {
  const _$_OnlineOrder(
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
  String toString() {
    return 'OnlineOrder(id: $id, open: $open, payed: $payed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnlineOrder &&
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
  _$OnlineOrderCopyWith<_OnlineOrder> get copyWith =>
      __$OnlineOrderCopyWithImpl<_OnlineOrder>(this, _$identity);
}

abstract class _OnlineOrder implements OnlineOrder {
  const factory _OnlineOrder({required String id, bool open, bool payed}) =
      _$_OnlineOrder;

  @override
  String get id;
  @override
  bool get open;
  @override
  bool get payed;
  @override
  @JsonKey(ignore: true)
  _$OnlineOrderCopyWith<_OnlineOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
