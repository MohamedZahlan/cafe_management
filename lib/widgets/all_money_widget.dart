import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AllMoneyWidget extends StatelessWidget {
  final String productName;
  final dynamic productPrice;
  final int productAmount;
  final int productID;
  final dynamic productAllMoney;
  const AllMoneyWidget(
      {Key? key,
      required this.productName,
      required this.productPrice,
      required this.productAmount,
      required this.productAllMoney,
      required this.productID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(productID.toString()),
        SizedBox(
          width: width(context) / 9.0,
        ),
        Text(productName),
        const Spacer(),
        Text(productPrice.toString()),
        const Spacer(),
        Text(productAmount.toString()),
        const Spacer(),
        Text(productAllMoney.toString()),
        const Spacer(),
      ],
    );
  }
}
