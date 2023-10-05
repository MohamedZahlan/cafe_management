import 'package:cafe_management/constants/constants.dart';
import 'package:cafe_management/modules/models/hot_drink_model/hot_drink_model.dart';
import 'package:cafe_management/modules/models/waffle_model/waffle_model.dart';
import 'package:cafe_management/modules/screens/add_product/add_product.dart';
import 'package:cafe_management/modules/screens/all_money/all_money_screen.dart';
import 'package:cafe_management/modules/screens/order/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import '../../models/chocolate_model/chocolate_model.dart';
import '../../models/coffee_model/coffee_model.dart';
import '../../models/fresh_juice_model/fresh_juice_model.dart';
import '../../models/iced_model/iced_drinks_model.dart';
import '../../models/sweet_model/sweet_model.dart';
import '../../screens/delete_product/delete_product.dart';
import '../../screens/update_product/update_product.dart';
part 'cafe_state.dart';

class CafeCubit extends Cubit<CafeStates> {
  CafeCubit() : super(CafeInitial());

  static CafeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeNavIndex(int value) {
    currentIndex = value;
    emit(CafeChangeNavIndexState());
  }

  bool isExpanded = false;

  void changeNavExpanded() {
    isExpanded = !isExpanded;
    emit(CafeChangeNavExpandedState());
  }

  int count = 0;

  void countPlus() {
    count++;
    emit(CafeCountPlusState());
  }

  void countMinus() {
    if (count != 0) {
      count--;
    }
    emit(CafeCountMinusState());
  }

  List<NavigationRailDestination> navRail = const [
    NavigationRailDestination(
        icon: Icon(
          Icons.coffee,
        ),
        label: Text(
          "إضافة اوردر",
        )),
    NavigationRailDestination(
      icon: Icon(
        Icons.shopping_cart,
      ),
      label: Text(
        "المبيعات",
      ),
    ),
    NavigationRailDestination(
        icon: Icon(
          Icons.add_circle,
        ),
        label: Text(
          "إضافة منتج جديد",
        )),
    NavigationRailDestination(
      icon: Icon(
        Icons.update,
      ),
      label: Text(
        "تحديث منتج",
      ),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.delete, color: Colors.red),
      label: Text(
        "حذف منتج",
      ),
    ),
  ];

  List<Widget> screens = [
    const OrderScreen(),
    const AllMoneyScreen(),
    const AddProductScreen(),
    const UpdateProductScreen(),
    const DeleteProductScreen(),
  ];

// ------- for IceDrinks Data------------

  void addIceDrinksProduct(IcedDrinks icedDrinks) {
    emit(CafeIcedDrinksLoadingState());
    var hive = Hive.box(kIcedProductsBox);
    hive.add(icedDrinks).then((value) {
      emit(CafeIcedDrinksAddProductSuccessState());
    }).catchError((error) {
      emit(CafeIcedDrinksAddProductErrorState(error.toString()));
    });
  }

  final List<IcedDrinks> iceDrink = [
    IcedDrinks(
      image: 'assets/Images/cola.png',
      name: 'كاكولا',
      details: ' Price',
      price: 10,
    ),
    IcedDrinks(
      image: 'assets/Images/pepsi.png',
      name: 'pepsi',
      details: ' Price',
      price: 10,
    ),
    IcedDrinks(
      image: 'assets/Images/sprite.png',
      name: 'sprite',
      details: 'Price',
      price: 10,
    ),
    IcedDrinks(
      image: 'assets/Images/mirinda.jpg',
      name: 'sprite',
      details: 'Price',
      price: 10,
    ),
    IcedDrinks(
      image: 'assets/Images/colaDiet.png',
      name: 'colaDiet',
      details: 'Price',
      price: 10,
    ),
  ];

// ------- for CoffeeDrinks Data------------

  void addCoffeeDrinksProduct(CoffeeModel coffeeModel) {
    emit(CafeCoffeeLoadingState());
    var hive = Hive.box(kCoffeeProductsBox);
    hive.add(coffeeModel).then((value) {
      emit(CafeCoffeeAddProductSuccessState());
    }).catchError((error) {
      emit(CafeCoffeeAddProductErrorState(error.toString()));
    });
  }

  final List<CoffeeModel> coffeeData = [
    CoffeeModel(
      image: 'assets/Images/COFFEE.jpg',
      name: 'أسبريسو',
      details: ' Price',
      price: 12,
    ),
    CoffeeModel(
      image: 'assets/Images/COFFEE1.jpg',
      name: 'أسبريسو',
      details: ' Price',
      price: 18,
    ),
    CoffeeModel(
      image: 'assets/Images/COFFEE2.jpg',
      name: 'أسبريسو شوكليت',
      details: 'Price',
      price: 20,
    ),
    CoffeeModel(
      image: 'assets/Images/COFFEETurkey.jpg',
      name: 'قهوة تركي',
      details: 'Price',
      price: 10,
    ),
  ];

// ------- for HotDrinks Data------------

  void addHotDrinksProduct(HotDrinkModel hotDrinkModel) {
    emit(CafeHotDrinksLoadingState());
    var hive = Hive.box(kHotProductsBox);
    hive.add(hotDrinkModel).then((value) {
      emit(CafeHotDrinksAddProductSuccessState());
    }).catchError((error) {
      emit(CafeHotDrinksAddProductErrorState(error.toString()));
    });
  }

  final List<HotDrinkModel> hotDrinkData = [
    HotDrinkModel(
      image: 'assets/Images/tea.jpg',
      name: 'شاي',
      details: ' Price',
      price: 5,
    ),
    HotDrinkModel(
      image: 'assets/Images/packetTea.png',
      name: 'شاي باكيت',
      details: ' Price',
      price: 7,
    ),
    HotDrinkModel(
      image: 'assets/Images/milkTea.jpg',
      name: 'شاي حليب',
      details: 'Price',
      price: 10,
    ),
  ];

// ------- for ChocolateDrinks Data------------

  void addChocolateProduct(ChocolateModel chocolateModel) {
    emit(CafeChocolateLoadingState());
    var hive = Hive.box(kChocolateProductsBox);
    hive.add(chocolateModel).then((value) {
      emit(CafeChocolateAddProductSuccessState());
    }).catchError((error) {
      emit(CafeChocolateAddProductErrorState(error.toString()));
    });
  }

  final List<ChocolateModel> chocolateDrinkData = [
    ChocolateModel(
      image: 'assets/Images/oreo1.jpg',
      name: 'أوريو قطع',
      details: ' Price',
      price: 25,
    ),
    ChocolateModel(
      image: 'assets/Images/oreo2.jpg',
      name: 'أوريو',
      details: ' Price',
      price: 20,
    ),
  ];

// ------- for FreshJuice Data------------

  void addFreshJuiceProduct(FreshJuiceModel juiceModel) {
    emit(CafeFreshJuiceLoadingState());
    var hive = Hive.box(kFreshJuiceProductsBox);
    hive.add(juiceModel).then((value) {
      emit(CafeFreshJuiceAddProductSuccessState());
    }).catchError((error) {
      emit(CafeFreshJuiceAddProductErrorState(error.toString()));
    });
  }

  final List<FreshJuiceModel> freshJuiceDrinkData = [
    FreshJuiceModel(
      image: 'assets/Images/mango.webp',
      name: 'مانجو',
      details: ' Price',
      price: 25,
    ),
    FreshJuiceModel(
      image: 'assets/Images/Lemon.jpg',
      name: 'ليمون',
      details: ' Price',
      price: 15,
    ),
    FreshJuiceModel(
      image: 'assets/Images/farawla.jpg',
      name: 'فراولة',
      details: ' Price',
      price: 15,
    ),
  ];

// ------- for Sweet Data------------

  void addSweetProduct(SweetModel sweetModel) {
    emit(CafeSweetLoadingState());
    var hive = Hive.box(kSweetProductsBox);
    hive.add(sweetModel).then((value) {
      emit(CafeSweetAddProductSuccessState());
    }).catchError((error) {
      emit(CafeSweetAddProductErrorState(error.toString()));
    });
  }

  final List<SweetModel> sweetData = [
    SweetModel(
      image: 'assets/Images/omAli.jpg',
      name: 'أم علي',
      details: ' Price',
      price: 20,
    ),
    SweetModel(
      image: 'assets/Images/OmAliFruits.jpg',
      name: 'أم علي فواكه',
      details: ' Price',
      price: 30,
    ),
    SweetModel(
      image: 'assets/Images/iceCream1.jpg',
      name: 'أيس كريم',
      details: ' Price',
      price: 15,
    ),
  ];

// ------- for Waffle Data------------

  void addWaffleProduct(WaffleModel waffleModel) {
    emit(CafeWaffleLoadingState());
    var hive = Hive.box(kWaffleProductsBox);
    hive.add(waffleModel).then((value) {
      emit(CafeWaffleAddProductSuccessState());
    }).catchError((error) {
      emit(CafeWaffleAddProductErrorState(error.toString()));
    });
  }

  final List<WaffleModel> waffleData = [
    WaffleModel(
      image: 'assets/Images/waffle.jpg',
      name: 'وافل',
      details: ' Price',
      price: 20,
    ),
    WaffleModel(
      image: 'assets/Images/waffleFruits.jpg',
      name: 'وافل فواكه',
      details: ' Price',
      price: 30,
    ),
  ];

//------- For Select Category To Add Products ----------
  dynamic value;

  void changeDropDownButton(val) {
    value = val;
    emit(CafeChangeDropDownState());
  }
}
