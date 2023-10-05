// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chocolate_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChocolateModelAdapter extends TypeAdapter<ChocolateModel> {
  @override
  final int typeId = 0;

  @override
  ChocolateModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChocolateModel(
      image: fields[1] as String,
      name: fields[2] as String,
      details: fields[3] as String,
      price: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ChocolateModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.details)
      ..writeByte(4)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChocolateModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
