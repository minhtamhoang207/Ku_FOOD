import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:kufood/app/data/cache_manager.dart';

part 'board_model.g.dart';

@HiveType(typeId: CacheManager.broadmodel)
class BoardModelLocal extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String title;
  @HiveField(2)
  DateTime time;
  @HiveField(3)
  final List<Uint8List>? listImage;
  @HiveField(4)
  final String? model;
  @HiveField(5)
  final String? statusModel;
  @HiveField(6)
  final int? timeDuration;
  @HiveField(7)
  final bool? isEnable;
  BoardModelLocal(
      {this.id,
      required this.title,
      required this.time,
      this.listImage,
      this.model,
      this.timeDuration,
      this.isEnable = true,
      this.statusModel});

  BoardModelLocal copyWith(
      {String? id,
      String? title,
      DateTime? time,
      List<Uint8List>? listImage,
      String? model,
      int? timeDuration,
      bool? isEnable,
      String? statusModel}) {
    return BoardModelLocal(
        id: id ?? this.id,
        title: title ?? this.title,
        time: time ?? this.time,
        listImage: listImage ?? this.listImage,
        model: model ?? this.model,
        timeDuration: timeDuration ?? this.timeDuration,
        isEnable: isEnable ?? this.isEnable,
        statusModel: statusModel ?? this.statusModel);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'time': time,
      'model': model,
      "statusModel": statusModel
    };
  }
}
