// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoffeeModelAdapter extends TypeAdapter<CoffeeModel> {
  @override
  final int typeId = 1;

  @override
  CoffeeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffeeModel(
      image: fields[1] as String,
      name: fields[2] as String,
      details: fields[3] as String,
      price: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CoffeeModel obj) {
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
      other is CoffeeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
