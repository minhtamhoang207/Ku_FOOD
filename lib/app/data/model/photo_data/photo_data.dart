import 'package:flutter/foundation.dart';

class PhotoData {
  final String? id;
  final String? imagePath;
  final bool? readOnly;
  final dynamic file;
  final String? fileName;
  final Uint8List? imageData;

  PhotoData({
    this.id,
    this.imagePath,
    this.readOnly = false,
    this.file,
    this.fileName,
    this.imageData,
  });

  // static PhotoData fromLocalModel(PhotoDataLocalModel model) {
  //   return PhotoData(
  //     id: model.id ?? '',
  //     imagePath: model.imagePath ?? '',
  //     readOnly: model.readOnly ?? '',
  //     file: model.file ?? '',
  //     fileName: model.fileName ?? '',
  //     imageData: model.imageData,
  //   );
  // }

  // PhotoDataLocalModel toLocalModel() {
  //   return PhotoDataLocalModel(
  //     id,
  //     imagePath,
  //     readOnly,
  //     file,
  //     fileName,
  //     imageData,
  //   );
  // }
}
