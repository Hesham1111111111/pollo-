// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaLink _$MetaLinkFromJson(Map<String, dynamic> json) {
  return _MetaLink.fromJson(json);
}

/// @nodoc
mixin _$MetaLink {
  String? get url => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  /// Serializes this MetaLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaLinkCopyWith<MetaLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaLinkCopyWith<$Res> {
  factory $MetaLinkCopyWith(MetaLink value, $Res Function(MetaLink) then) =
      _$MetaLinkCopyWithImpl<$Res, MetaLink>;
  @useResult
  $Res call({String? url, String label, bool active});
}

/// @nodoc
class _$MetaLinkCopyWithImpl<$Res, $Val extends MetaLink>
    implements $MetaLinkCopyWith<$Res> {
  _$MetaLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaLinkImplCopyWith<$Res>
    implements $MetaLinkCopyWith<$Res> {
  factory _$$MetaLinkImplCopyWith(
          _$MetaLinkImpl value, $Res Function(_$MetaLinkImpl) then) =
      __$$MetaLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String label, bool active});
}

/// @nodoc
class __$$MetaLinkImplCopyWithImpl<$Res>
    extends _$MetaLinkCopyWithImpl<$Res, _$MetaLinkImpl>
    implements _$$MetaLinkImplCopyWith<$Res> {
  __$$MetaLinkImplCopyWithImpl(
      _$MetaLinkImpl _value, $Res Function(_$MetaLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$MetaLinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaLinkImpl implements _MetaLink {
  const _$MetaLinkImpl({this.url, required this.label, required this.active});

  factory _$MetaLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaLinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String label;
  @override
  final bool active;

  @override
  String toString() {
    return 'MetaLink(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaLinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  /// Create a copy of MetaLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaLinkImplCopyWith<_$MetaLinkImpl> get copyWith =>
      __$$MetaLinkImplCopyWithImpl<_$MetaLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaLinkImplToJson(
      this,
    );
  }
}

abstract class _MetaLink implements MetaLink {
  const factory _MetaLink(
      {final String? url,
      required final String label,
      required final bool active}) = _$MetaLinkImpl;

  factory _MetaLink.fromJson(Map<String, dynamic> json) =
      _$MetaLinkImpl.fromJson;

  @override
  String? get url;
  @override
  String get label;
  @override
  bool get active;

  /// Create a copy of MetaLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaLinkImplCopyWith<_$MetaLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
