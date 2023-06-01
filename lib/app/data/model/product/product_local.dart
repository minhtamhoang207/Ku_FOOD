import 'package:hive/hive.dart';
import 'package:kufood/app/data/cache_manager.dart';

part 'product_local.g.dart';

@HiveType(typeId: CacheManager.productLocal)
class ProductLocal extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  final String role;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String detail;
  @HiveField(4)
  final int price;
  @HiveField(5)
  final String image;
  ProductLocal(
      {this.id,
      required this.role,
      required this.name,
      required this.detail,
      required this.price,
      required this.image});

  ProductLocal copyWith(
      {String? role, String? name, String? detail, int? price, String? image}) {
    return ProductLocal(
        id: id,
        role: role ?? this.role,
        name: name ?? this.name,
        detail: detail ?? this.detail,
        price: price ?? this.price,
        image: image ?? this.image);
  }
}
