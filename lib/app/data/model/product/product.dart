import 'package:json_annotation/json_annotation.dart';
import 'package:kufood/app/data/model/product/product_local.dart';

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

  ProductLocal toLocal() {
    return ProductLocal(
        role: role, name: name, detail: detail, price: price, image: image);
  }

  static ProductModel fromLocal(ProductLocal model) {
    return ProductModel(
        role: model.role,
        name: model.name,
        detail: model.detail,
        price: model.price,
        image: model.image);
  }

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
