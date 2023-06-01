// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductLocalAdapter extends TypeAdapter<ProductLocal> {
  @override
  final int typeId = 3;

  @override
  ProductLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductLocal(
      id: fields[0] as String?,
      role: fields[1] as String,
      name: fields[2] as String,
      detail: fields[3] as String,
      price: fields[4] as int,
      image: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductLocal obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.role)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.detail)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
