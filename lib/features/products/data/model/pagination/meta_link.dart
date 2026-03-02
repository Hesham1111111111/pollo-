import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_link.freezed.dart';
part 'meta_link.g.dart';
@freezed
class MetaLink with _$MetaLink {
  const factory MetaLink({
    String? url,
    required String label,
    required bool active,
  }) = _MetaLink;

  factory MetaLink.fromJson(Map<String, dynamic> json)
  => _$MetaLinkFromJson(json);
}