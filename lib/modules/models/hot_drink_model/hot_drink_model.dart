import 'package:hive/hive.dart';
part 'hot_drink_model.g.dart';

@HiveType(typeId: 3)
class HotDrinkModel extends HiveObject {
  @HiveField(1)
  String image;
  @HiveField(2)
  String name;
  @HiveField(3)
  String details;
  @HiveField(4)
  int price;

  HotDrinkModel({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
  });
}
