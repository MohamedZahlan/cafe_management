import 'package:cafe_management/modules/dashboard/cubit/cafe_cubit.dart';
import 'package:cafe_management/widgets/chocolate_widget.dart';
import 'package:cafe_management/widgets/fresh_juice_widget.dart';
import 'package:cafe_management/widgets/ice_drink.dart';
import 'package:cafe_management/widgets/sweet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants/constants.dart';
import '../../../widgets/coffee_widget.dart';
import '../../../widgets/hot_drink_widget.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/waffle_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CafeCubit, CafeStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        CafeCubit cubit = CafeCubit.get(context);
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //------------- for products----------------
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Soft Drinks"),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  /// GridView for IceDrinks
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: cubit.count != 0 ? 2 : 3,
                    crossAxisSpacing: width(context) / 20,
                    mainAxisSpacing: height(context) / 20,
                    childAspectRatio: height(context) / 550,
                    children: List.generate(
                      cubit.iceDrink.length,
                      (index) => IceDrinkWidget(
                        image: cubit.iceDrink[index].image,
                        name: cubit.iceDrink[index].name,
                        price: cubit.iceDrink[index].price,
                        count: cubit.count,
                      ),
                    ),
                  ),

                  ///
                  SizedBox(
                    height: height(context) / 10,
                  ),

                  ///

                  const Text("Coffee"),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  /// GridView for Coffee
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: cubit.count != 0 ? 2 : 3,
                    crossAxisSpacing: width(context) / 20,
                    mainAxisSpacing: height(context) / 20,
                    childAspectRatio: height(context) / 550,
                    children: List.generate(
                      cubit.coffeeData.length,
                      (index) => CoffeeDrinkWidget(
                        image: cubit.coffeeData[index].image,
                        name: cubit.coffeeData[index].name,
                        price: cubit.coffeeData[index].price,
                        count: cubit.count,
                      ),
                    ),
                  ),

                  ///
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  ///
                  const Text("Hot Drinks"),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  /// GridView for Hot Drinks
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: cubit.count != 0 ? 2 : 3,
                    crossAxisSpacing: width(context) / 20,
                    mainAxisSpacing: height(context) / 20,
                    childAspectRatio: height(context) / 550,
                    children: List.generate(
                      cubit.hotDrinkData.length,
                      (index) => HotDrinkWidget(
                        image: cubit.hotDrinkData[index].image,
                        name: cubit.hotDrinkData[index].name,
                        price: cubit.hotDrinkData[index].price,
                        count: cubit.count,
                      ),
                    ),
                  ),

                  ///
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  ///
                  const Text("Chocolate Drinks"),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  /// GridView for Chocolate Drinks
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: cubit.count != 0 ? 2 : 3,
                    crossAxisSpacing: width(context) / 20,
                    mainAxisSpacing: height(context) / 20,
                    childAspectRatio: height(context) / 550,
                    children: List.generate(
                      cubit.chocolateDrinkData.length,
                      (index) => ChocolateDrinkWidget(
                        image: cubit.chocolateDrinkData[index].image,
                        name: cubit.chocolateDrinkData[index].name,
                        price: cubit.chocolateDrinkData[index].price,
                        count: cubit.count,
                      ),
                    ),
                  ),

                  ///
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  ///
                  const Text("Fresh Juice"),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  /// GridView for FreshJuice Drinks
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: cubit.count != 0 ? 2 : 3,
                    crossAxisSpacing: width(context) / 20,
                    mainAxisSpacing: height(context) / 20,
                    childAspectRatio: height(context) / 550,
                    children: List.generate(
                      cubit.freshJuiceDrinkData.length,
                      (index) => FreshJuiceWidget(
                        image: cubit.freshJuiceDrinkData[index].image,
                        name: cubit.freshJuiceDrinkData[index].name,
                        price: cubit.freshJuiceDrinkData[index].price,
                        count: cubit.count,
                      ),
                    ),
                  ),

                  ///
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  ///
                  const Text("Sweet"),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  /// GridView for Sweet
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: cubit.count != 0 ? 2 : 3,
                    crossAxisSpacing: width(context) / 20,
                    mainAxisSpacing: height(context) / 20,
                    childAspectRatio: height(context) / 550,
                    children: List.generate(
                      cubit.sweetData.length,
                      (index) => SweetWidget(
                        image: cubit.sweetData[index].image,
                        name: cubit.sweetData[index].name,
                        price: cubit.sweetData[index].price,
                        count: cubit.count,
                      ),
                    ),
                  ),

                  ///
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  ///
                  const Text(
                    "Waffle",
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: height(context) / 40,
                  ),

                  /// GridView for Waffle
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: cubit.count != 0 ? 2 : 3,
                    crossAxisSpacing: width(context) / 20,
                    mainAxisSpacing: height(context) / 20,
                    childAspectRatio: height(context) / 550,
                    children: List.generate(
                      cubit.waffleData.length,
                      (index) => WaffleWidget(
                        image: cubit.waffleData[index].image,
                        name: cubit.waffleData[index].name,
                        price: cubit.waffleData[index].price,
                        count: cubit.count,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width(context) / 25,
            ),
            //--------- if you select product---------
            if (cubit.count != 0)
              //-------------- For CheckOut-------------------
              Expanded(
                child: Container(
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.symmetric(
                      vertical: height(context) / 70,
                      horizontal: width(context) / 80),
                  child: Column(
                    children: [
                      const Text(
                        "الفاتورة",
                        style: TextStyle(color: Colors.black),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: height(context) / 2,
                      ),
                      MyButton(
                        function: () {},
                        doubleWidth: width(context) / 7,
                        text: "تأكيد",
                        fontSize: 18.0,
                        borderRadius: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
