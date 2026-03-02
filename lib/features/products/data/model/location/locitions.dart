
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locitions.freezed.dart';
part 'locitions.g.dart';
@freezed
class Location with _$Location {
  const factory Location({
    String? lat,
    String? lng,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json)
  => _$LocationFromJson(json);
}