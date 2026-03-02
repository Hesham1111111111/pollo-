// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  int get activeIndex => throw _privateConstructorUsedError;
  RequestState<List<Category>> get topCategoriesState =>
      throw _privateConstructorUsedError;
  RequestState<List<SubCategory>> get subCategoriesState =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {int activeIndex,
      RequestState<List<Category>> topCategoriesState,
      RequestState<List<SubCategory>> subCategoriesState});

  $RequestStateCopyWith<List<Category>, $Res> get topCategoriesState;
  $RequestStateCopyWith<List<SubCategory>, $Res> get subCategoriesState;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeIndex = null,
    Object? topCategoriesState = null,
    Object? subCategoriesState = null,
  }) {
    return _then(_value.copyWith(
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      topCategoriesState: null == topCategoriesState
          ? _value.topCategoriesState
          : topCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState<List<Category>>,
      subCategoriesState: null == subCategoriesState
          ? _value.subCategoriesState
          : subCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState<List<SubCategory>>,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<List<Category>, $Res> get topCategoriesState {
    return $RequestStateCopyWith<List<Category>, $Res>(
        _value.topCategoriesState, (value) {
      return _then(_value.copyWith(topCategoriesState: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<List<SubCategory>, $Res> get subCategoriesState {
    return $RequestStateCopyWith<List<SubCategory>, $Res>(
        _value.subCategoriesState, (value) {
      return _then(_value.copyWith(subCategoriesState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int activeIndex,
      RequestState<List<Category>> topCategoriesState,
      RequestState<List<SubCategory>> subCategoriesState});

  @override
  $RequestStateCopyWith<List<Category>, $Res> get topCategoriesState;
  @override
  $RequestStateCopyWith<List<SubCategory>, $Res> get subCategoriesState;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeIndex = null,
    Object? topCategoriesState = null,
    Object? subCategoriesState = null,
  }) {
    return _then(_$HomeStateImpl(
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      topCategoriesState: null == topCategoriesState
          ? _value.topCategoriesState
          : topCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState<List<Category>>,
      subCategoriesState: null == subCategoriesState
          ? _value.subCategoriesState
          : subCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState<List<SubCategory>>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.activeIndex = 0,
      this.topCategoriesState = const RequestState<List<Category>>.initial(),
      this.subCategoriesState =
          const RequestState<List<SubCategory>>.initial()});

  @override
  @JsonKey()
  final int activeIndex;
  @override
  @JsonKey()
  final RequestState<List<Category>> topCategoriesState;
  @override
  @JsonKey()
  final RequestState<List<SubCategory>> subCategoriesState;

  @override
  String toString() {
    return 'HomeState(activeIndex: $activeIndex, topCategoriesState: $topCategoriesState, subCategoriesState: $subCategoriesState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex) &&
            (identical(other.topCategoriesState, topCategoriesState) ||
                other.topCategoriesState == topCategoriesState) &&
            (identical(other.subCategoriesState, subCategoriesState) ||
                other.subCategoriesState == subCategoriesState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, activeIndex, topCategoriesState, subCategoriesState);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
          {final int activeIndex,
          final RequestState<List<Category>> topCategoriesState,
          final RequestState<List<SubCategory>> subCategoriesState}) =
      _$HomeStateImpl;

  @override
  int get activeIndex;
  @override
  RequestState<List<Category>> get topCategoriesState;
  @override
  RequestState<List<SubCategory>> get subCategoriesState;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
