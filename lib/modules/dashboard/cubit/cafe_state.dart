part of 'cafe_cubit.dart';

@immutable
abstract class CafeStates {}

class CafeInitial extends CafeStates {}

class CafeChangeNavIndexState extends CafeStates {}

class CafeChangeNavExpandedState extends CafeStates {}

class CafeCountPlusState extends CafeStates {}

class CafeCountMinusState extends CafeStates {}

class CafeChangeDropDownState extends CafeStates {}

class CafeChocolateLoadingState extends CafeStates {}

class CafeChocolateAddProductSuccessState extends CafeStates {}

class CafeChocolateAddProductErrorState extends CafeStates {
  final String errorMess;

  CafeChocolateAddProductErrorState(this.errorMess);
}

class CafeCoffeeLoadingState extends CafeStates {}

class CafeCoffeeAddProductSuccessState extends CafeStates {}

class CafeCoffeeAddProductErrorState extends CafeStates {
  final String errorMess;

  CafeCoffeeAddProductErrorState(this.errorMess);
}

class CafeIcedDrinksLoadingState extends CafeStates {}

class CafeIcedDrinksAddProductSuccessState extends CafeStates {}

class CafeIcedDrinksAddProductErrorState extends CafeStates {
  final String errorMess;

  CafeIcedDrinksAddProductErrorState(this.errorMess);
}

class CafeHotDrinksLoadingState extends CafeStates {}

class CafeHotDrinksAddProductSuccessState extends CafeStates {}

class CafeHotDrinksAddProductErrorState extends CafeStates {
  final String errorMess;

  CafeHotDrinksAddProductErrorState(this.errorMess);
}

class CafeFreshJuiceLoadingState extends CafeStates {}

class CafeFreshJuiceAddProductSuccessState extends CafeStates {}

class CafeFreshJuiceAddProductErrorState extends CafeStates {
  final String errorMess;

  CafeFreshJuiceAddProductErrorState(this.errorMess);
}

class CafeSweetLoadingState extends CafeStates {}

class CafeSweetAddProductSuccessState extends CafeStates {}

class CafeSweetAddProductErrorState extends CafeStates {
  final String errorMess;

  CafeSweetAddProductErrorState(this.errorMess);
}

class CafeWaffleLoadingState extends CafeStates {}

class CafeWaffleAddProductSuccessState extends CafeStates {}

class CafeWaffleAddProductErrorState extends CafeStates {
  final String errorMess;

  CafeWaffleAddProductErrorState(this.errorMess);
}
