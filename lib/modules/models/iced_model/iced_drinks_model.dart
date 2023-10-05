import 'package:hive/hive.dart';
part 'iced_drinks_model.g.dart';

@HiveType(typeId: 4)
class IcedDrinks extends HiveObject {
  @HiveField(1)
  String image;
  @HiveField(2)
  String name;
  @HiveField(3)
  String details;
  @HiveField(4)
  int price;

  IcedDrinks({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
  });
}
