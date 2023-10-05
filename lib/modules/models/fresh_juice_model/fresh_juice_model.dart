import 'package:hive/hive.dart';
part 'fresh_juice_model.g.dart';

@HiveType(typeId: 2)
class FreshJuiceModel extends HiveObject {
  @HiveField(1)
  String image;
  @HiveField(2)
  String name;
  @HiveField(3)
  String details;
  @HiveField(4)
  int price;
  FreshJuiceModel({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
  });
}
