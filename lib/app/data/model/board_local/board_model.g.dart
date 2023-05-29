// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BoardModelLocalAdapter extends TypeAdapter<BoardModelLocal> {
  @override
  final int typeId = 1;

  @override
  BoardModelLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BoardModelLocal(
      id: fields[0] as String?,
      title: fields[1] as String,
      time: fields[2] as DateTime,
      listImage: (fields[3] as List?)?.cast<Uint8List>(),
      model: fields[4] as String?,
      timeDuration: fields[6] as int?,
      isEnable: fields[7] as bool?,
      statusModel: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BoardModelLocal obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.listImage)
      ..writeByte(4)
      ..write(obj.model)
      ..writeByte(5)
      ..write(obj.statusModel)
      ..writeByte(6)
      ..write(obj.timeDuration)
      ..writeByte(7)
      ..write(obj.isEnable);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BoardModelLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
