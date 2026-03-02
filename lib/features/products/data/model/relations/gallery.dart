import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery.freezed.dart';
part 'gallery.g.dart';
@freezed
class Gallery with _$Gallery {
  const factory Gallery({
    required int id,
    required String url,
  }) = _Gallery;

  factory Gallery.fromJson(Map<String, dynamic> json)
  => _$GalleryFromJson(json);
}