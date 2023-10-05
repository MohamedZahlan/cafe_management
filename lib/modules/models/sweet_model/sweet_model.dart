import 'package:hive/hive.dart';
part 'sweet_model.g.dart';

@HiveType(typeId: 5)
class SweetModel extends HiveObject {
  @HiveField(1)
  String image;
  @HiveField(2)
  String name;
  @HiveField(3)
  String details;
  @HiveField(4)
  int price;

  SweetModel({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
  });
}
