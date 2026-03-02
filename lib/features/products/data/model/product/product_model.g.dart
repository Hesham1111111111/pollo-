// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      gallery: (json['gallery'] as List<dynamic>)
          .map((e) => Gallery.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      price: json['price'] as String,
      description: json['description'] as String,
      removeAt: json['remove_at'] as String,
      merchant: json['merchant'] == null
          ? null
          : Merchant.fromJson(json['merchant'] as Map<String, dynamic>),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      state: StateModel.fromJson(json['state'] as Map<String, dynamic>),
      city: City.fromJson(json['city'] as Map<String, dynamic>),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'gallery': instance.gallery,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'remove_at': instance.removeAt,
      'merchant': instance.merchant,
      'category': instance.category,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location': instance.location,
      'created_at': instance.createdAt,
    };
