import 'package:flutter/material.dart';
import '../../../config/themes/colors.dart';
import '../../../constants/constants.dart';
import '../../../widgets/all_money_widget.dart';

class AllMoneyScreen extends StatelessWidget {
  const AllMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: myDefaultColor,
              padding: EdgeInsets.symmetric(
                  horizontal: width(context) / 15,
                  vertical: height(context) / 100),
              child: Text(
                "أسم المنتج",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: height(context) / 35,
                    ),
              ),
            ),
            SizedBox(
              width: width(context) / 80,
            ),
            Container(
              color: myDefaultColor,
              padding: EdgeInsets.symmetric(
                  horizontal: width(context) / 15,
                  vertical: height(context) / 100),
              child: Text(
                "سعره",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: height(context) / 35,
                    ),
              ),
            ),
            SizedBox(
              width: width(context) / 80,
            ),
            Container(
              color: myDefaultColor,
              padding: EdgeInsets.symmetric(
                  horizontal: width(context) / 15,
                  vertical: height(context) / 100),
              child: Text(
                "الكمية",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: height(context) / 35,
                    ),
              ),
            ),
            SizedBox(
              width: width(context) / 80,
            ),
            Container(
              color: myDefaultColor,
              padding: EdgeInsets.symmetric(
                  horizontal: width(context) / 15,
                  vertical: height(context) / 100),
              child: Text(
                "أجمالي المبلغ",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: height(context) / 35,
                    ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height(context) / 40,
        ),
        SizedBox(
          height: height(context),
          child: ListView.separated(
            itemBuilder: (context, index) => const AllMoneyWidget(
              productName: 'قهوة تركي',
              productPrice: 10,
              productAmount: 1,
              productAllMoney: 10,
              productID: 1,
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 500,
          ),
        ),
      ],
    );
  }
}
