import 'package:flutter/material.dart';

double height(context) => MediaQuery.of(context).size.height;

double width(context) => MediaQuery.of(context).size.width;

void navigateTo(context, screen) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );

void navigateToFinish(context, screen) =>
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return screen;
    }), (route) => false);

const kChocolateProductsBox = 'chocolate_products_box';
const kCoffeeProductsBox = 'coffee_products_box';
const kFreshJuiceProductsBox = 'fresh_products_box';
const kHotProductsBox = 'hot_products_box';
const kIcedProductsBox = 'iced_products_box';
const kSweetProductsBox = 'sweet_products_box';
const kWaffleProductsBox = 'waffle_products_box';
const kCheckOutBox = 'check_out_box';
const kAmountBox = 'amount_box';
