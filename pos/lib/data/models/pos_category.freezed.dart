// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POSCategory _$POSCategoryFromJson(Map<String, dynamic> json) {
  return _POSCategory.fromJson(json);
}

/// @nodoc
class _$POSCategoryTearOff {
  const _$POSCategoryTearOff();

  _POSCategory call(
      {required int id,
      required String name,
      @JsonKey(name: 'parent_id') bool? parentId,
      int? sequence,
      @JsonKey(name: 'exclude_pos_ids') List<int>? excludePosIds,
      @JsonKey(name: 'restaurant_printer_ids') List<int>? restaurantPrinterIds,
      @JsonKey(name: 'invisible_in_ui') bool? invisibleInUi,
      @JsonKey(name: 'website_image_1920') bool? websiteImage1920,
      @JsonKey(name: 'is_published') bool? isPublished}) {
    return _POSCategory(
      id: id,
      name: name,
      parentId: parentId,
      sequence: sequence,
      excludePosIds: excludePosIds,
      restaurantPrinterIds: restaurantPrinterIds,
      invisibleInUi: invisibleInUi,
      websiteImage1920: websiteImage1920,
      isPublished: isPublished,
    );
  }

  POSCategory fromJson(Map<String, Object?> json) {
    return POSCategory.fromJson(json);
  }
}

/// @nodoc
const $POSCategory = _$POSCategoryTearOff();

/// @nodoc
mixin _$POSCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  bool? get parentId => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  @JsonKey(name: 'exclude_pos_ids')
  List<int>? get excludePosIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_printer_ids')
  List<int>? get restaurantPrinterIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'invisible_in_ui')
  bool? get invisibleInUi => throw _privateConstructorUsedError;
  @JsonKey(name: 'website_image_1920')
  bool? get websiteImage1920 => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_published')
  bool? get isPublished => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSCategoryCopyWith<POSCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSCategoryCopyWith<$Res> {
  factory $POSCategoryCopyWith(
          POSCategory value, $Res Function(POSCategory) then) =
      _$POSCategoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'parent_id') bool? parentId,
      int? sequence,
      @JsonKey(name: 'exclude_pos_ids') List<int>? excludePosIds,
      @JsonKey(name: 'restaurant_printer_ids') List<int>? restaurantPrinterIds,
      @JsonKey(name: 'invisible_in_ui') bool? invisibleInUi,
      @JsonKey(name: 'website_image_1920') bool? websiteImage1920,
      @JsonKey(name: 'is_published') bool? isPublished});
}

/// @nodoc
class _$POSCategoryCopyWithImpl<$Res> implements $POSCategoryCopyWith<$Res> {
  _$POSCategoryCopyWithImpl(this._value, this._then);

  final POSCategory _value;
  // ignore: unused_field
  final $Res Function(POSCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? sequence = freezed,
    Object? excludePosIds = freezed,
    Object? restaurantPrinterIds = freezed,
    Object? invisibleInUi = freezed,
    Object? websiteImage1920 = freezed,
    Object? isPublished = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as bool?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      excludePosIds: excludePosIds == freezed
          ? _value.excludePosIds
          : excludePosIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      restaurantPrinterIds: restaurantPrinterIds == freezed
          ? _value.restaurantPrinterIds
          : restaurantPrinterIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      invisibleInUi: invisibleInUi == freezed
          ? _value.invisibleInUi
          : invisibleInUi // ignore: cast_nullable_to_non_nullable
              as bool?,
      websiteImage1920: websiteImage1920 == freezed
          ? _value.websiteImage1920
          : websiteImage1920 // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$POSCategoryCopyWith<$Res>
    implements $POSCategoryCopyWith<$Res> {
  factory _$POSCategoryCopyWith(
          _POSCategory value, $Res Function(_POSCategory) then) =
      __$POSCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'parent_id') bool? parentId,
      int? sequence,
      @JsonKey(name: 'exclude_pos_ids') List<int>? excludePosIds,
      @JsonKey(name: 'restaurant_printer_ids') List<int>? restaurantPrinterIds,
      @JsonKey(name: 'invisible_in_ui') bool? invisibleInUi,
      @JsonKey(name: 'website_image_1920') bool? websiteImage1920,
      @JsonKey(name: 'is_published') bool? isPublished});
}

/// @nodoc
class __$POSCategoryCopyWithImpl<$Res> extends _$POSCategoryCopyWithImpl<$Res>
    implements _$POSCategoryCopyWith<$Res> {
  __$POSCategoryCopyWithImpl(
      _POSCategory _value, $Res Function(_POSCategory) _then)
      : super(_value, (v) => _then(v as _POSCategory));

  @override
  _POSCategory get _value => super._value as _POSCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? sequence = freezed,
    Object? excludePosIds = freezed,
    Object? restaurantPrinterIds = freezed,
    Object? invisibleInUi = freezed,
    Object? websiteImage1920 = freezed,
    Object? isPublished = freezed,
  }) {
    return _then(_POSCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as bool?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      excludePosIds: excludePosIds == freezed
          ? _value.excludePosIds
          : excludePosIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      restaurantPrinterIds: restaurantPrinterIds == freezed
          ? _value.restaurantPrinterIds
          : restaurantPrinterIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      invisibleInUi: invisibleInUi == freezed
          ? _value.invisibleInUi
          : invisibleInUi // ignore: cast_nullable_to_non_nullable
              as bool?,
      websiteImage1920: websiteImage1920 == freezed
          ? _value.websiteImage1920
          : websiteImage1920 // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSCategory implements _POSCategory {
  const _$_POSCategory(
      {required this.id,
      required this.name,
      @JsonKey(name: 'parent_id') this.parentId,
      this.sequence,
      @JsonKey(name: 'exclude_pos_ids') this.excludePosIds,
      @JsonKey(name: 'restaurant_printer_ids') this.restaurantPrinterIds,
      @JsonKey(name: 'invisible_in_ui') this.invisibleInUi,
      @JsonKey(name: 'website_image_1920') this.websiteImage1920,
      @JsonKey(name: 'is_published') this.isPublished});

  factory _$_POSCategory.fromJson(Map<String, dynamic> json) =>
      _$$_POSCategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'parent_id')
  final bool? parentId;
  @override
  final int? sequence;
  @override
  @JsonKey(name: 'exclude_pos_ids')
  final List<int>? excludePosIds;
  @override
  @JsonKey(name: 'restaurant_printer_ids')
  final List<int>? restaurantPrinterIds;
  @override
  @JsonKey(name: 'invisible_in_ui')
  final bool? invisibleInUi;
  @override
  @JsonKey(name: 'website_image_1920')
  final bool? websiteImage1920;
  @override
  @JsonKey(name: 'is_published')
  final bool? isPublished;

  @override
  String toString() {
    return 'POSCategory(id: $id, name: $name, parentId: $parentId, sequence: $sequence, excludePosIds: $excludePosIds, restaurantPrinterIds: $restaurantPrinterIds, invisibleInUi: $invisibleInUi, websiteImage1920: $websiteImage1920, isPublished: $isPublished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.sequence, sequence) &&
            const DeepCollectionEquality()
                .equals(other.excludePosIds, excludePosIds) &&
            const DeepCollectionEquality()
                .equals(other.restaurantPrinterIds, restaurantPrinterIds) &&
            const DeepCollectionEquality()
                .equals(other.invisibleInUi, invisibleInUi) &&
            const DeepCollectionEquality()
                .equals(other.websiteImage1920, websiteImage1920) &&
            const DeepCollectionEquality()
                .equals(other.isPublished, isPublished));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(sequence),
      const DeepCollectionEquality().hash(excludePosIds),
      const DeepCollectionEquality().hash(restaurantPrinterIds),
      const DeepCollectionEquality().hash(invisibleInUi),
      const DeepCollectionEquality().hash(websiteImage1920),
      const DeepCollectionEquality().hash(isPublished));

  @JsonKey(ignore: true)
  @override
  _$POSCategoryCopyWith<_POSCategory> get copyWith =>
      __$POSCategoryCopyWithImpl<_POSCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSCategoryToJson(this);
  }
}

abstract class _POSCategory implements POSCategory {
  const factory _POSCategory(
      {required int id,
      required String name,
      @JsonKey(name: 'parent_id') bool? parentId,
      int? sequence,
      @JsonKey(name: 'exclude_pos_ids') List<int>? excludePosIds,
      @JsonKey(name: 'restaurant_printer_ids') List<int>? restaurantPrinterIds,
      @JsonKey(name: 'invisible_in_ui') bool? invisibleInUi,
      @JsonKey(name: 'website_image_1920') bool? websiteImage1920,
      @JsonKey(name: 'is_published') bool? isPublished}) = _$_POSCategory;

  factory _POSCategory.fromJson(Map<String, dynamic> json) =
      _$_POSCategory.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'parent_id')
  bool? get parentId;
  @override
  int? get sequence;
  @override
  @JsonKey(name: 'exclude_pos_ids')
  List<int>? get excludePosIds;
  @override
  @JsonKey(name: 'restaurant_printer_ids')
  List<int>? get restaurantPrinterIds;
  @override
  @JsonKey(name: 'invisible_in_ui')
  bool? get invisibleInUi;
  @override
  @JsonKey(name: 'website_image_1920')
  bool? get websiteImage1920;
  @override
  @JsonKey(name: 'is_published')
  bool? get isPublished;
  @override
  @JsonKey(ignore: true)
  _$POSCategoryCopyWith<_POSCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

POSCategoryResults _$POSCategoryResultsFromJson(Map<String, dynamic> json) {
  return _POSCategoryResults.fromJson(json);
}

/// @nodoc
class _$POSCategoryResultsTearOff {
  const _$POSCategoryResultsTearOff();

  _POSCategoryResults call(
      {@JsonKey(name: 'results') required List<POSCategory> POSCategories}) {
    return _POSCategoryResults(
      POSCategories: POSCategories,
    );
  }

  POSCategoryResults fromJson(Map<String, Object?> json) {
    return POSCategoryResults.fromJson(json);
  }
}

/// @nodoc
const $POSCategoryResults = _$POSCategoryResultsTearOff();

/// @nodoc
mixin _$POSCategoryResults {
  @JsonKey(name: 'results')
  List<POSCategory> get POSCategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSCategoryResultsCopyWith<POSCategoryResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSCategoryResultsCopyWith<$Res> {
  factory $POSCategoryResultsCopyWith(
          POSCategoryResults value, $Res Function(POSCategoryResults) then) =
      _$POSCategoryResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<POSCategory> POSCategories});
}

/// @nodoc
class _$POSCategoryResultsCopyWithImpl<$Res>
    implements $POSCategoryResultsCopyWith<$Res> {
  _$POSCategoryResultsCopyWithImpl(this._value, this._then);

  final POSCategoryResults _value;
  // ignore: unused_field
  final $Res Function(POSCategoryResults) _then;

  @override
  $Res call({
    Object? POSCategories = freezed,
  }) {
    return _then(_value.copyWith(
      POSCategories: POSCategories == freezed
          ? _value.POSCategories
          : POSCategories // ignore: cast_nullable_to_non_nullable
              as List<POSCategory>,
    ));
  }
}

/// @nodoc
abstract class _$POSCategoryResultsCopyWith<$Res>
    implements $POSCategoryResultsCopyWith<$Res> {
  factory _$POSCategoryResultsCopyWith(
          _POSCategoryResults value, $Res Function(_POSCategoryResults) then) =
      __$POSCategoryResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<POSCategory> POSCategories});
}

/// @nodoc
class __$POSCategoryResultsCopyWithImpl<$Res>
    extends _$POSCategoryResultsCopyWithImpl<$Res>
    implements _$POSCategoryResultsCopyWith<$Res> {
  __$POSCategoryResultsCopyWithImpl(
      _POSCategoryResults _value, $Res Function(_POSCategoryResults) _then)
      : super(_value, (v) => _then(v as _POSCategoryResults));

  @override
  _POSCategoryResults get _value => super._value as _POSCategoryResults;

  @override
  $Res call({
    Object? POSCategories = freezed,
  }) {
    return _then(_POSCategoryResults(
      POSCategories: POSCategories == freezed
          ? _value.POSCategories
          : POSCategories // ignore: cast_nullable_to_non_nullable
              as List<POSCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSCategoryResults implements _POSCategoryResults {
  const _$_POSCategoryResults(
      {@JsonKey(name: 'results') required this.POSCategories});

  factory _$_POSCategoryResults.fromJson(Map<String, dynamic> json) =>
      _$$_POSCategoryResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<POSCategory> POSCategories;

  @override
  String toString() {
    return 'POSCategoryResults(POSCategories: $POSCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSCategoryResults &&
            const DeepCollectionEquality()
                .equals(other.POSCategories, POSCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(POSCategories));

  @JsonKey(ignore: true)
  @override
  _$POSCategoryResultsCopyWith<_POSCategoryResults> get copyWith =>
      __$POSCategoryResultsCopyWithImpl<_POSCategoryResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSCategoryResultsToJson(this);
  }
}

abstract class _POSCategoryResults implements POSCategoryResults {
  const factory _POSCategoryResults(
      {@JsonKey(name: 'results')
          required List<POSCategory> POSCategories}) = _$_POSCategoryResults;

  factory _POSCategoryResults.fromJson(Map<String, dynamic> json) =
      _$_POSCategoryResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<POSCategory> get POSCategories;
  @override
  @JsonKey(ignore: true)
  _$POSCategoryResultsCopyWith<_POSCategoryResults> get copyWith =>
      throw _privateConstructorUsedError;
}
