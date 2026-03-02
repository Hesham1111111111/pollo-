import 'package:freezed_annotation/freezed_annotation.dart';

part 'linkes.freezed.dart';
part 'linkes.g.dart';
@freezed
class Links with _$Links {
  const factory Links({
    String? first,
    String? last,
    String? prev,
    String? next,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json)
  => _$LinksFromJson(json);
}