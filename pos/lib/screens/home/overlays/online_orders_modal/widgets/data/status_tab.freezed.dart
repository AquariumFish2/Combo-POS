// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatusTabTearOff {
  const _$StatusTabTearOff();

  _StatusTab call(
      {required String id, required String text, dynamic selected = false}) {
    return _StatusTab(
      id: id,
      text: text,
      selected: selected,
    );
  }
}

/// @nodoc
const $StatusTab = _$StatusTabTearOff();

/// @nodoc
mixin _$StatusTab {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  dynamic get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusTabCopyWith<StatusTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusTabCopyWith<$Res> {
  factory $StatusTabCopyWith(StatusTab value, $Res Function(StatusTab) then) =
      _$StatusTabCopyWithImpl<$Res>;
  $Res call({String id, String text, dynamic selected});
}

/// @nodoc
class _$StatusTabCopyWithImpl<$Res> implements $StatusTabCopyWith<$Res> {
  _$StatusTabCopyWithImpl(this._value, this._then);

  final StatusTab _value;
  // ignore: unused_field
  final $Res Function(StatusTab) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$StatusTabCopyWith<$Res> implements $StatusTabCopyWith<$Res> {
  factory _$StatusTabCopyWith(
          _StatusTab value, $Res Function(_StatusTab) then) =
      __$StatusTabCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text, dynamic selected});
}

/// @nodoc
class __$StatusTabCopyWithImpl<$Res> extends _$StatusTabCopyWithImpl<$Res>
    implements _$StatusTabCopyWith<$Res> {
  __$StatusTabCopyWithImpl(_StatusTab _value, $Res Function(_StatusTab) _then)
      : super(_value, (v) => _then(v as _StatusTab));

  @override
  _StatusTab get _value => super._value as _StatusTab;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? selected = freezed,
  }) {
    return _then(_StatusTab(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed ? _value.selected : selected,
    ));
  }
}

/// @nodoc

class _$_StatusTab with DiagnosticableTreeMixin implements _StatusTab {
  const _$_StatusTab(
      {required this.id, required this.text, this.selected = false});

  @override
  final String id;
  @override
  final String text;
  @JsonKey()
  @override
  final dynamic selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatusTab(id: $id, text: $text, selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatusTab'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusTab &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$StatusTabCopyWith<_StatusTab> get copyWith =>
      __$StatusTabCopyWithImpl<_StatusTab>(this, _$identity);
}

abstract class _StatusTab implements StatusTab {
  const factory _StatusTab(
      {required String id,
      required String text,
      dynamic selected}) = _$_StatusTab;

  @override
  String get id;
  @override
  String get text;
  @override
  dynamic get selected;
  @override
  @JsonKey(ignore: true)
  _$StatusTabCopyWith<_StatusTab> get copyWith =>
      throw _privateConstructorUsedError;
}
