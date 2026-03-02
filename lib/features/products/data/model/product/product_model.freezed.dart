// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<Gallery> get gallery => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'remove_at')
  String get removeAt => throw _privateConstructorUsedError;
  Merchant? get merchant => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;
  StateModel get state => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String image,
      List<Gallery> gallery,
      String name,
      String price,
      String description,
      @JsonKey(name: 'remove_at') String removeAt,
      Merchant? merchant,
      Category category,
      Country country,
      StateModel state,
      City city,
      String? latitude,
      String? longitude,
      Location location,
      @JsonKey(name: 'created_at') String createdAt});

  $MerchantCopyWith<$Res>? get merchant;
  $CategoryCopyWith<$Res> get category;
  $CountryCopyWith<$Res> get country;
  $StateModelCopyWith<$Res> get state;
  $CityCopyWith<$Res> get city;
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? gallery = null,
    Object? name = null,
    Object? price = null,
    Object? description = null,
    Object? removeAt = null,
    Object? merchant = freezed,
    Object? category = null,
    Object? country = null,
    Object? state = null,
    Object? city = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? location = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<Gallery>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      removeAt: null == removeAt
          ? _value.removeAt
          : removeAt // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as Merchant?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StateModel,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MerchantCopyWith<$Res>? get merchant {
    if (_value.merchant == null) {
      return null;
    }

    return $MerchantCopyWith<$Res>(_value.merchant!, (value) {
      return _then(_value.copyWith(merchant: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StateModelCopyWith<$Res> get state {
    return $StateModelCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image,
      List<Gallery> gallery,
      String name,
      String price,
      String description,
      @JsonKey(name: 'remove_at') String removeAt,
      Merchant? merchant,
      Category category,
      Country country,
      StateModel state,
      City city,
      String? latitude,
      String? longitude,
      Location location,
      @JsonKey(name: 'created_at') String createdAt});

  @override
  $MerchantCopyWith<$Res>? get merchant;
  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $CountryCopyWith<$Res> get country;
  @override
  $StateModelCopyWith<$Res> get state;
  @override
  $CityCopyWith<$Res> get city;
  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? gallery = null,
    Object? name = null,
    Object? price = null,
    Object? description = null,
    Object? removeAt = null,
    Object? merchant = freezed,
    Object? category = null,
    Object? country = null,
    Object? state = null,
    Object? city = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? location = null,
    Object? createdAt = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      gallery: null == gallery
          ? _value._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<Gallery>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      removeAt: null == removeAt
          ? _value.removeAt
          : removeAt // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as Merchant?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StateModel,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.image,
      required final List<Gallery> gallery,
      required this.name,
      required this.price,
      required this.description,
      @JsonKey(name: 'remove_at') required this.removeAt,
      this.merchant,
      required this.category,
      required this.country,
      required this.state,
      required this.city,
      this.latitude,
      this.longitude,
      required this.location,
      @JsonKey(name: 'created_at') required this.createdAt})
      : _gallery = gallery;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final String image;
  final List<Gallery> _gallery;
  @override
  List<Gallery> get gallery {
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gallery);
  }

  @override
  final String name;
  @override
  final String price;
  @override
  final String description;
  @override
  @JsonKey(name: 'remove_at')
  final String removeAt;
  @override
  final Merchant? merchant;
  @override
  final Category category;
  @override
  final Country country;
  @override
  final StateModel state;
  @override
  final City city;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final Location location;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'Product(id: $id, image: $image, gallery: $gallery, name: $name, price: $price, description: $description, removeAt: $removeAt, merchant: $merchant, category: $category, country: $country, state: $state, city: $city, latitude: $latitude, longitude: $longitude, location: $location, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.removeAt, removeAt) ||
                other.removeAt == removeAt) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      const DeepCollectionEquality().hash(_gallery),
      name,
      price,
      description,
      removeAt,
      merchant,
      category,
      country,
      state,
      city,
      latitude,
      longitude,
      location,
      createdAt);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
          {required final int id,
          required final String image,
          required final List<Gallery> gallery,
          required final String name,
          required final String price,
          required final String description,
          @JsonKey(name: 'remove_at') required final String removeAt,
          final Merchant? merchant,
          required final Category category,
          required final Country country,
          required final StateModel state,
          required final City city,
          final String? latitude,
          final String? longitude,
          required final Location location,
          @JsonKey(name: 'created_at') required final String createdAt}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  List<Gallery> get gallery;
  @override
  String get name;
  @override
  String get price;
  @override
  String get description;
  @override
  @JsonKey(name: 'remove_at')
  String get removeAt;
  @override
  Merchant? get merchant;
  @override
  Category get category;
  @override
  Country get country;
  @override
  StateModel get state;
  @override
  City get city;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  Location get location;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
