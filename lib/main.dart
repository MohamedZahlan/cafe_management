import 'package:cafe_management/config/themes/dark_theme.dart';
import 'package:cafe_management/config/themes/light_theme.dart';
import 'package:cafe_management/modules/dashboard/cubit/cafe_cubit.dart';
import 'package:cafe_management/modules/models/iced_model/iced_drinks_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants/constants.dart';
import 'core/auth/login_screen/login_screen.dart';
import 'modules/models/chocolate_model/chocolate_model.dart';
import 'modules/models/coffee_model/coffee_model.dart';
import 'modules/models/fresh_juice_model/fresh_juice_model.dart';
import 'modules/models/hot_drink_model/hot_drink_model.dart';
import 'modules/models/sweet_model/sweet_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //----------- For Products ------------
  Hive.openBox(kChocolateProductsBox);
  Hive.openBox(kCoffeeProductsBox);
  Hive.openBox(kFreshJuiceProductsBox);
  Hive.openBox(kHotProductsBox);
  Hive.openBox(kIcedProductsBox);
  Hive.openBox(kSweetProductsBox);
  Hive.openBox(kWaffleProductsBox);
  //------------- For Check Out ----------------
  Hive.openBox(kCheckOutBox);
  //------------- For Amount ----------------
  Hive.openBox(kAmountBox);
  //--------- For RegisterAdapter
  Hive.registerAdapter(ChocolateModelAdapter());
  Hive.registerAdapter(CoffeeModelAdapter());
  Hive.registerAdapter(FreshJuiceModelAdapter());
  Hive.registerAdapter(HotDrinkModelAdapter());
  Hive.registerAdapter(IcedDrinksAdapter());
  Hive.registerAdapter(SweetModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CafeCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: const LoginScreen(),
      ),
    );
  }
}
