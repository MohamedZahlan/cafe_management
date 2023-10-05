import 'package:hive/hive.dart';
part 'coffee_model.g.dart';

@HiveType(typeId: 1)
class CoffeeModel extends HiveObject {
  @HiveField(1)
  String image;
  @HiveField(2)
  String name;
  @HiveField(3)
  String details;
  @HiveField(4)
  int price;

  CoffeeModel({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
  });
}
