import 'package:hive/hive.dart';
part 'chocolate_model.g.dart';

@HiveType(typeId: 0)
class ChocolateModel extends HiveObject {
  @HiveField(1)
  String image;
  @HiveField(2)
  String name;
  @HiveField(3)
  String details;
  @HiveField(4)
  int price;

  ChocolateModel({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
  });
}
