import 'dart:typed_data';

import 'package:workmanager_example/data/cache_manager.dart';
import 'package:hive/hive.dart';

part 'user_model_local.g.dart';

@HiveType(typeId: CacheManager.userLocal)
class UserLocal extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String phone;
  @HiveField(2)
  String? idNumber;

  UserLocal({required this.name, required this.phone, this.idNumber});

  UserLocal copyWith({String? name, String? phone, String? idNumber}) {
    return UserLocal(
        name: name ?? this.name,
        phone: phone ?? this.phone,
        idNumber: idNumber ?? this.idNumber);
  }
}
