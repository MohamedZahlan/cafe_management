import 'package:hive/hive.dart';
part 'waffle_model.g.dart';

@HiveType(typeId: 6)
class WaffleModel extends HiveObject {
  @HiveField(1)
  String image;
  @HiveField(2)
  String name;
  @HiveField(3)
  String details;
  @HiveField(4)
  int price;

  WaffleModel({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
  });
}
