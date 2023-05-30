import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class ProductModel {
  final String role;
  final String name;
  final String detail;
  final int price;
  final String image;
  ProductModel(
      {required this.detail,
      required this.image,
      required this.name,
      required this.price,
      required this.role});

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
