// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      detail: json['detail'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      price: json['price'] as int,
      role: json['role'] as String,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'role': instance.role,
      'name': instance.name,
      'detail': instance.detail,
      'price': instance.price,
      'image': instance.image,
    };
