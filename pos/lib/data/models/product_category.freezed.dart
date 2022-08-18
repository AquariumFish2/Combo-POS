// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
class _$ProductCategoryTearOff {
  const _$ProductCategoryTearOff();

  _ProductCategory call(
      {required String id,
      required String name,
      @JsonKey(name: 'parent_id')
          bool? parentId,
      @JsonKey(name: 'removal_strategy_id')
          bool? removalStrategyId,
      @JsonKey(name: 'property_cost_method')
          String? propertyCostMethod,
      @JsonKey(name: 'property_valuation')
          String? propertyValuation,
      @JsonKey(name: 'property_account_creditor_price_difference_categ')
          bool? propertyAccountCreditorPriceDifferenceCateg,
      @JsonKey(name: 'property_account_expense_categ_id')
          int? propertyAccountExpenseCategId,
      @JsonKey(name: 'property_account_income_categ_id')
          int? propertyAccountIncomeCategId,
      @JsonKey(name: 'property_stock_account_input_categ_id')
          int? propertyStockAccountInputCategId,
      @JsonKey(name: 'property_stock_account_output_categ_id')
          int? propertyStockAccountOutputCategId,
      @JsonKey(name: 'property_stock_valuation_account_id')
          int? propertyStockValuationAccountId}) {
    return _ProductCategory(
      id: id,
      name: name,
      parentId: parentId,
      removalStrategyId: removalStrategyId,
      propertyCostMethod: propertyCostMethod,
      propertyValuation: propertyValuation,
      propertyAccountCreditorPriceDifferenceCateg:
          propertyAccountCreditorPriceDifferenceCateg,
      propertyAccountExpenseCategId: propertyAccountExpenseCategId,
      propertyAccountIncomeCategId: propertyAccountIncomeCategId,
      propertyStockAccountInputCategId: propertyStockAccountInputCategId,
      propertyStockAccountOutputCategId: propertyStockAccountOutputCategId,
      propertyStockValuationAccountId: propertyStockValuationAccountId,
    );
  }

  ProductCategory fromJson(Map<String, Object?> json) {
    return ProductCategory.fromJson(json);
  }
}

/// @nodoc
const $ProductCategory = _$ProductCategoryTearOff();

/// @nodoc
mixin _$ProductCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  bool? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'removal_strategy_id')
  bool? get removalStrategyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_cost_method')
  String? get propertyCostMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_valuation')
  String? get propertyValuation => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_account_creditor_price_difference_categ')
  bool? get propertyAccountCreditorPriceDifferenceCateg =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'property_account_expense_categ_id')
  int? get propertyAccountExpenseCategId => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_account_income_categ_id')
  int? get propertyAccountIncomeCategId => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_stock_account_input_categ_id')
  int? get propertyStockAccountInputCategId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'property_stock_account_output_categ_id')
  int? get propertyStockAccountOutputCategId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'property_stock_valuation_account_id')
  int? get propertyStockValuationAccountId =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'parent_id')
          bool? parentId,
      @JsonKey(name: 'removal_strategy_id')
          bool? removalStrategyId,
      @JsonKey(name: 'property_cost_method')
          String? propertyCostMethod,
      @JsonKey(name: 'property_valuation')
          String? propertyValuation,
      @JsonKey(name: 'property_account_creditor_price_difference_categ')
          bool? propertyAccountCreditorPriceDifferenceCateg,
      @JsonKey(name: 'property_account_expense_categ_id')
          int? propertyAccountExpenseCategId,
      @JsonKey(name: 'property_account_income_categ_id')
          int? propertyAccountIncomeCategId,
      @JsonKey(name: 'property_stock_account_input_categ_id')
          int? propertyStockAccountInputCategId,
      @JsonKey(name: 'property_stock_account_output_categ_id')
          int? propertyStockAccountOutputCategId,
      @JsonKey(name: 'property_stock_valuation_account_id')
          int? propertyStockValuationAccountId});
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  final ProductCategory _value;
  // ignore: unused_field
  final $Res Function(ProductCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? removalStrategyId = freezed,
    Object? propertyCostMethod = freezed,
    Object? propertyValuation = freezed,
    Object? propertyAccountCreditorPriceDifferenceCateg = freezed,
    Object? propertyAccountExpenseCategId = freezed,
    Object? propertyAccountIncomeCategId = freezed,
    Object? propertyStockAccountInputCategId = freezed,
    Object? propertyStockAccountOutputCategId = freezed,
    Object? propertyStockValuationAccountId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as bool?,
      removalStrategyId: removalStrategyId == freezed
          ? _value.removalStrategyId
          : removalStrategyId // ignore: cast_nullable_to_non_nullable
              as bool?,
      propertyCostMethod: propertyCostMethod == freezed
          ? _value.propertyCostMethod
          : propertyCostMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyValuation: propertyValuation == freezed
          ? _value.propertyValuation
          : propertyValuation // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyAccountCreditorPriceDifferenceCateg:
          propertyAccountCreditorPriceDifferenceCateg == freezed
              ? _value.propertyAccountCreditorPriceDifferenceCateg
              : propertyAccountCreditorPriceDifferenceCateg // ignore: cast_nullable_to_non_nullable
                  as bool?,
      propertyAccountExpenseCategId: propertyAccountExpenseCategId == freezed
          ? _value.propertyAccountExpenseCategId
          : propertyAccountExpenseCategId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyAccountIncomeCategId: propertyAccountIncomeCategId == freezed
          ? _value.propertyAccountIncomeCategId
          : propertyAccountIncomeCategId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyStockAccountInputCategId: propertyStockAccountInputCategId ==
              freezed
          ? _value.propertyStockAccountInputCategId
          : propertyStockAccountInputCategId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyStockAccountOutputCategId: propertyStockAccountOutputCategId ==
              freezed
          ? _value.propertyStockAccountOutputCategId
          : propertyStockAccountOutputCategId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyStockValuationAccountId: propertyStockValuationAccountId ==
              freezed
          ? _value.propertyStockValuationAccountId
          : propertyStockValuationAccountId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ProductCategoryCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$ProductCategoryCopyWith(
          _ProductCategory value, $Res Function(_ProductCategory) then) =
      __$ProductCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'parent_id')
          bool? parentId,
      @JsonKey(name: 'removal_strategy_id')
          bool? removalStrategyId,
      @JsonKey(name: 'property_cost_method')
          String? propertyCostMethod,
      @JsonKey(name: 'property_valuation')
          String? propertyValuation,
      @JsonKey(name: 'property_account_creditor_price_difference_categ')
          bool? propertyAccountCreditorPriceDifferenceCateg,
      @JsonKey(name: 'property_account_expense_categ_id')
          int? propertyAccountExpenseCategId,
      @JsonKey(name: 'property_account_income_categ_id')
          int? propertyAccountIncomeCategId,
      @JsonKey(name: 'property_stock_account_input_categ_id')
          int? propertyStockAccountInputCategId,
      @JsonKey(name: 'property_stock_account_output_categ_id')
          int? propertyStockAccountOutputCategId,
      @JsonKey(name: 'property_stock_valuation_account_id')
          int? propertyStockValuationAccountId});
}

/// @nodoc
class __$ProductCategoryCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res>
    implements _$ProductCategoryCopyWith<$Res> {
  __$ProductCategoryCopyWithImpl(
      _ProductCategory _value, $Res Function(_ProductCategory) _then)
      : super(_value, (v) => _then(v as _ProductCategory));

  @override
  _ProductCategory get _value => super._value as _ProductCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? removalStrategyId = freezed,
    Object? propertyCostMethod = freezed,
    Object? propertyValuation = freezed,
    Object? propertyAccountCreditorPriceDifferenceCateg = freezed,
    Object? propertyAccountExpenseCategId = freezed,
    Object? propertyAccountIncomeCategId = freezed,
    Object? propertyStockAccountInputCategId = freezed,
    Object? propertyStockAccountOutputCategId = freezed,
    Object? propertyStockValuationAccountId = freezed,
  }) {
    return _then(_ProductCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as bool?,
      removalStrategyId: removalStrategyId == freezed
          ? _value.removalStrategyId
          : removalStrategyId // ignore: cast_nullable_to_non_nullable
              as bool?,
      propertyCostMethod: propertyCostMethod == freezed
          ? _value.propertyCostMethod
          : propertyCostMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyValuation: propertyValuation == freezed
          ? _value.propertyValuation
          : propertyValuation // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyAccountCreditorPriceDifferenceCateg:
          propertyAccountCreditorPriceDifferenceCateg == freezed
              ? _value.propertyAccountCreditorPriceDifferenceCateg
              : propertyAccountCreditorPriceDifferenceCateg // ignore: cast_nullable_to_non_nullable
                  as bool?,
      propertyAccountExpenseCategId: propertyAccountExpenseCategId == freezed
          ? _value.propertyAccountExpenseCategId
          : propertyAccountExpenseCategId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyAccountIncomeCategId: propertyAccountIncomeCategId == freezed
          ? _value.propertyAccountIncomeCategId
          : propertyAccountIncomeCategId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyStockAccountInputCategId: propertyStockAccountInputCategId ==
              freezed
          ? _value.propertyStockAccountInputCategId
          : propertyStockAccountInputCategId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyStockAccountOutputCategId: propertyStockAccountOutputCategId ==
              freezed
          ? _value.propertyStockAccountOutputCategId
          : propertyStockAccountOutputCategId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyStockValuationAccountId: propertyStockValuationAccountId ==
              freezed
          ? _value.propertyStockValuationAccountId
          : propertyStockValuationAccountId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategory implements _ProductCategory {
  const _$_ProductCategory(
      {required this.id,
      required this.name,
      @JsonKey(name: 'parent_id')
          this.parentId,
      @JsonKey(name: 'removal_strategy_id')
          this.removalStrategyId,
      @JsonKey(name: 'property_cost_method')
          this.propertyCostMethod,
      @JsonKey(name: 'property_valuation')
          this.propertyValuation,
      @JsonKey(name: 'property_account_creditor_price_difference_categ')
          this.propertyAccountCreditorPriceDifferenceCateg,
      @JsonKey(name: 'property_account_expense_categ_id')
          this.propertyAccountExpenseCategId,
      @JsonKey(name: 'property_account_income_categ_id')
          this.propertyAccountIncomeCategId,
      @JsonKey(name: 'property_stock_account_input_categ_id')
          this.propertyStockAccountInputCategId,
      @JsonKey(name: 'property_stock_account_output_categ_id')
          this.propertyStockAccountOutputCategId,
      @JsonKey(name: 'property_stock_valuation_account_id')
          this.propertyStockValuationAccountId});

  factory _$_ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'parent_id')
  final bool? parentId;
  @override
  @JsonKey(name: 'removal_strategy_id')
  final bool? removalStrategyId;
  @override
  @JsonKey(name: 'property_cost_method')
  final String? propertyCostMethod;
  @override
  @JsonKey(name: 'property_valuation')
  final String? propertyValuation;
  @override
  @JsonKey(name: 'property_account_creditor_price_difference_categ')
  final bool? propertyAccountCreditorPriceDifferenceCateg;
  @override
  @JsonKey(name: 'property_account_expense_categ_id')
  final int? propertyAccountExpenseCategId;
  @override
  @JsonKey(name: 'property_account_income_categ_id')
  final int? propertyAccountIncomeCategId;
  @override
  @JsonKey(name: 'property_stock_account_input_categ_id')
  final int? propertyStockAccountInputCategId;
  @override
  @JsonKey(name: 'property_stock_account_output_categ_id')
  final int? propertyStockAccountOutputCategId;
  @override
  @JsonKey(name: 'property_stock_valuation_account_id')
  final int? propertyStockValuationAccountId;

  @override
  String toString() {
    return 'ProductCategory(id: $id, name: $name, parentId: $parentId, removalStrategyId: $removalStrategyId, propertyCostMethod: $propertyCostMethod, propertyValuation: $propertyValuation, propertyAccountCreditorPriceDifferenceCateg: $propertyAccountCreditorPriceDifferenceCateg, propertyAccountExpenseCategId: $propertyAccountExpenseCategId, propertyAccountIncomeCategId: $propertyAccountIncomeCategId, propertyStockAccountInputCategId: $propertyStockAccountInputCategId, propertyStockAccountOutputCategId: $propertyStockAccountOutputCategId, propertyStockValuationAccountId: $propertyStockValuationAccountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality()
                .equals(other.removalStrategyId, removalStrategyId) &&
            const DeepCollectionEquality()
                .equals(other.propertyCostMethod, propertyCostMethod) &&
            const DeepCollectionEquality()
                .equals(other.propertyValuation, propertyValuation) &&
            const DeepCollectionEquality().equals(
                other.propertyAccountCreditorPriceDifferenceCateg,
                propertyAccountCreditorPriceDifferenceCateg) &&
            const DeepCollectionEquality().equals(
                other.propertyAccountExpenseCategId,
                propertyAccountExpenseCategId) &&
            const DeepCollectionEquality().equals(
                other.propertyAccountIncomeCategId,
                propertyAccountIncomeCategId) &&
            const DeepCollectionEquality().equals(
                other.propertyStockAccountInputCategId,
                propertyStockAccountInputCategId) &&
            const DeepCollectionEquality().equals(
                other.propertyStockAccountOutputCategId,
                propertyStockAccountOutputCategId) &&
            const DeepCollectionEquality().equals(
                other.propertyStockValuationAccountId,
                propertyStockValuationAccountId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(removalStrategyId),
      const DeepCollectionEquality().hash(propertyCostMethod),
      const DeepCollectionEquality().hash(propertyValuation),
      const DeepCollectionEquality()
          .hash(propertyAccountCreditorPriceDifferenceCateg),
      const DeepCollectionEquality().hash(propertyAccountExpenseCategId),
      const DeepCollectionEquality().hash(propertyAccountIncomeCategId),
      const DeepCollectionEquality().hash(propertyStockAccountInputCategId),
      const DeepCollectionEquality().hash(propertyStockAccountOutputCategId),
      const DeepCollectionEquality().hash(propertyStockValuationAccountId));

  @JsonKey(ignore: true)
  @override
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith =>
      __$ProductCategoryCopyWithImpl<_ProductCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoryToJson(this);
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
      {required String id,
      required String name,
      @JsonKey(name: 'parent_id')
          bool? parentId,
      @JsonKey(name: 'removal_strategy_id')
          bool? removalStrategyId,
      @JsonKey(name: 'property_cost_method')
          String? propertyCostMethod,
      @JsonKey(name: 'property_valuation')
          String? propertyValuation,
      @JsonKey(name: 'property_account_creditor_price_difference_categ')
          bool? propertyAccountCreditorPriceDifferenceCateg,
      @JsonKey(name: 'property_account_expense_categ_id')
          int? propertyAccountExpenseCategId,
      @JsonKey(name: 'property_account_income_categ_id')
          int? propertyAccountIncomeCategId,
      @JsonKey(name: 'property_stock_account_input_categ_id')
          int? propertyStockAccountInputCategId,
      @JsonKey(name: 'property_stock_account_output_categ_id')
          int? propertyStockAccountOutputCategId,
      @JsonKey(name: 'property_stock_valuation_account_id')
          int? propertyStockValuationAccountId}) = _$_ProductCategory;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$_ProductCategory.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'parent_id')
  bool? get parentId;
  @override
  @JsonKey(name: 'removal_strategy_id')
  bool? get removalStrategyId;
  @override
  @JsonKey(name: 'property_cost_method')
  String? get propertyCostMethod;
  @override
  @JsonKey(name: 'property_valuation')
  String? get propertyValuation;
  @override
  @JsonKey(name: 'property_account_creditor_price_difference_categ')
  bool? get propertyAccountCreditorPriceDifferenceCateg;
  @override
  @JsonKey(name: 'property_account_expense_categ_id')
  int? get propertyAccountExpenseCategId;
  @override
  @JsonKey(name: 'property_account_income_categ_id')
  int? get propertyAccountIncomeCategId;
  @override
  @JsonKey(name: 'property_stock_account_input_categ_id')
  int? get propertyStockAccountInputCategId;
  @override
  @JsonKey(name: 'property_stock_account_output_categ_id')
  int? get propertyStockAccountOutputCategId;
  @override
  @JsonKey(name: 'property_stock_valuation_account_id')
  int? get propertyStockValuationAccountId;
  @override
  @JsonKey(ignore: true)
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategoryResults _$ProductCategoryResultsFromJson(
    Map<String, dynamic> json) {
  return _ProductCategoryResults.fromJson(json);
}

/// @nodoc
class _$ProductCategoryResultsTearOff {
  const _$ProductCategoryResultsTearOff();

  _ProductCategoryResults call(
      {@JsonKey(name: 'results')
          required List<ProductCategory> productCategories}) {
    return _ProductCategoryResults(
      productCategories: productCategories,
    );
  }

  ProductCategoryResults fromJson(Map<String, Object?> json) {
    return ProductCategoryResults.fromJson(json);
  }
}

/// @nodoc
const $ProductCategoryResults = _$ProductCategoryResultsTearOff();

/// @nodoc
mixin _$ProductCategoryResults {
  @JsonKey(name: 'results')
  List<ProductCategory> get productCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryResultsCopyWith<ProductCategoryResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryResultsCopyWith<$Res> {
  factory $ProductCategoryResultsCopyWith(ProductCategoryResults value,
          $Res Function(ProductCategoryResults) then) =
      _$ProductCategoryResultsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'results') List<ProductCategory> productCategories});
}

/// @nodoc
class _$ProductCategoryResultsCopyWithImpl<$Res>
    implements $ProductCategoryResultsCopyWith<$Res> {
  _$ProductCategoryResultsCopyWithImpl(this._value, this._then);

  final ProductCategoryResults _value;
  // ignore: unused_field
  final $Res Function(ProductCategoryResults) _then;

  @override
  $Res call({
    Object? productCategories = freezed,
  }) {
    return _then(_value.copyWith(
      productCategories: productCategories == freezed
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
    ));
  }
}

/// @nodoc
abstract class _$ProductCategoryResultsCopyWith<$Res>
    implements $ProductCategoryResultsCopyWith<$Res> {
  factory _$ProductCategoryResultsCopyWith(_ProductCategoryResults value,
          $Res Function(_ProductCategoryResults) then) =
      __$ProductCategoryResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'results') List<ProductCategory> productCategories});
}

/// @nodoc
class __$ProductCategoryResultsCopyWithImpl<$Res>
    extends _$ProductCategoryResultsCopyWithImpl<$Res>
    implements _$ProductCategoryResultsCopyWith<$Res> {
  __$ProductCategoryResultsCopyWithImpl(_ProductCategoryResults _value,
      $Res Function(_ProductCategoryResults) _then)
      : super(_value, (v) => _then(v as _ProductCategoryResults));

  @override
  _ProductCategoryResults get _value => super._value as _ProductCategoryResults;

  @override
  $Res call({
    Object? productCategories = freezed,
  }) {
    return _then(_ProductCategoryResults(
      productCategories: productCategories == freezed
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategoryResults implements _ProductCategoryResults {
  const _$_ProductCategoryResults(
      {@JsonKey(name: 'results') required this.productCategories});

  factory _$_ProductCategoryResults.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoryResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<ProductCategory> productCategories;

  @override
  String toString() {
    return 'ProductCategoryResults(productCategories: $productCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCategoryResults &&
            const DeepCollectionEquality()
                .equals(other.productCategories, productCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productCategories));

  @JsonKey(ignore: true)
  @override
  _$ProductCategoryResultsCopyWith<_ProductCategoryResults> get copyWith =>
      __$ProductCategoryResultsCopyWithImpl<_ProductCategoryResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoryResultsToJson(this);
  }
}

abstract class _ProductCategoryResults implements ProductCategoryResults {
  const factory _ProductCategoryResults(
          {@JsonKey(name: 'results')
              required List<ProductCategory> productCategories}) =
      _$_ProductCategoryResults;

  factory _ProductCategoryResults.fromJson(Map<String, dynamic> json) =
      _$_ProductCategoryResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<ProductCategory> get productCategories;
  @override
  @JsonKey(ignore: true)
  _$ProductCategoryResultsCopyWith<_ProductCategoryResults> get copyWith =>
      throw _privateConstructorUsedError;
}
