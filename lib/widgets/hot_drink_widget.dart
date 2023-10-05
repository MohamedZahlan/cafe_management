import 'package:cafe_management/modules/dashboard/cubit/cafe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../constants/constants.dart';

class HotDrinkWidget extends StatelessWidget {
  final dynamic image;
  final String name;
  final int price;
  final int count;
  const HotDrinkWidget({
    Key? key,
    this.image,
    required this.name,
    required this.price,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context) / 2,
      padding: EdgeInsets.symmetric(
          horizontal: width(context) / 40, vertical: height(context) / 70),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(image, height: height(context) / 10),
          ),
          SizedBox(
            height: height(context) / 40,
          ),
          Text(
            name.toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: HexColor('#181725'),
                  fontWeight: FontWeight.w900,
                ),
          ),
          const Spacer(),
          Row(
            children: [
              Icon(
                Icons.attach_money,
                color: HexColor('#181725'),
                size: 20,
              ),
              Text(
                price.toString(),
                style: TextStyle(
                  color: HexColor('#181725'),
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('#53B175'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    CafeCubit.get(context).countPlus();
                    //ShopTaskCubit.get(context).changeCartItem(model.id);
                  },
                  icon:
                      // ShopTaskCubit.get(context).inCart[model.id]!
                      //     ? Icon(
                      //         Icons.check,
                      //         color: HexColor('#FFFFFF'),
                      //       )
                      //     :
                      Icon(
                    Icons.add,
                    color: HexColor('#FFFFFF'),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width(context) / 50,
                    vertical: height(context) / 90),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "$count",
                  style: TextStyle(
                    color: HexColor('#181725'),
                    fontSize: 18,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('#53B175'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    CafeCubit.get(context).countMinus();

                    //ShopTaskCubit.get(context).changeCartItem(model.id);
                  },
                  icon:
                      // ShopTaskCubit.get(context).inCart[model.id]!
                      //     ? Icon(
                      //         Icons.check,
                      //         color: HexColor('#FFFFFF'),
                      //       )
                      //     :
                      Icon(
                    Icons.exposure_minus_1,
                    color: HexColor('#FFFFFF'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
