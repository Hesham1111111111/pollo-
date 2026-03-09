// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  int get activeIndex => throw _privateConstructorUsedError;
  RequestState<List<Product>> get productState =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call({int activeIndex, RequestState<List<Product>> productState});

  $RequestStateCopyWith<List<Product>, $Res> get productState;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeIndex = null,
    Object? productState = null,
  }) {
    return _then(_value.copyWith(
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      productState: null == productState
          ? _value.productState
          : productState // ignore: cast_nullable_to_non_nullable
              as RequestState<List<Product>>,
    ) as $Val);
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<List<Product>, $Res> get productState {
    return $RequestStateCopyWith<List<Product>, $Res>(_value.productState,
        (value) {
      return _then(_value.copyWith(productState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int activeIndex, RequestState<List<Product>> productState});

  @override
  $RequestStateCopyWith<List<Product>, $Res> get productState;
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeIndex = null,
    Object? productState = null,
  }) {
    return _then(_$ProductsStateImpl(
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      productState: null == productState
          ? _value.productState
          : productState // ignore: cast_nullable_to_non_nullable
              as RequestState<List<Product>>,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl implements _ProductsState {
  const _$ProductsStateImpl(
      {this.activeIndex = 0,
      this.productState = const RequestState<List<Product>>.initial()});

  @override
  @JsonKey()
  final int activeIndex;
  @override
  @JsonKey()
  final RequestState<List<Product>> productState;

  @override
  String toString() {
    return 'ProductsState(activeIndex: $activeIndex, productState: $productState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex) &&
            (identical(other.productState, productState) ||
                other.productState == productState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeIndex, productState);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  const factory _ProductsState(
      {final int activeIndex,
      final RequestState<List<Product>> productState}) = _$ProductsStateImpl;

  @override
  int get activeIndex;
  @override
  RequestState<List<Product>> get productState;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
