import 'package:bloc/bloc.dart';
import 'package:cafe_management/core/auth/login_screen/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  bool isPasswordShow = true;

  void changePasswordMode() {
    isPasswordShow = !isPasswordShow;
    emit(LoginChangePasswordModeState());
  }
}
