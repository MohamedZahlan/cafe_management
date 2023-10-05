import 'package:cafe_management/config/themes/colors.dart';
import 'package:cafe_management/constants/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cafe_management/core/auth/login_screen/bloc/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../config/themes/dark_theme.dart';
import '../../../config/themes/light_theme.dart';
import '../../../modules/screens/dashboard/dashboard_screen.dart';
import '../../../widgets/my_button.dart';
import 'bloc/states.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userNameController = TextEditingController();
    var passwordController = TextEditingController();
    String name = 'Sayed Zahlan';
    String password = '5050';
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: BlocConsumer<LoginCubit, LoginStates>(
          listener: (context, state) {},
          builder: (context, state) {
            LoginCubit cubit = LoginCubit.get(context);
            return Scaffold(
              body: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: myDefaultColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 200,
                            backgroundImage: AssetImage(
                              'assets/images/50Cafe.jpg',
                            ),
                          ),
                          SizedBox(
                            height: height(context) / 30,
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              WavyAnimatedText(
                                'Welcome',
                                textStyle:
                                    Theme.of(context).textTheme.bodyLarge,
                              ),
                              WavyAnimatedText(
                                '50amsena2 cafe',
                                textStyle:
                                    Theme.of(context).textTheme.bodyLarge,
                              ),
                            ],
                            isRepeatingAnimation: true,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: width(context) / 25),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset('assets/images/login.gif',
                                height: height(context) / 2.5),
                          ),
                          const Text("Username"),
                          SizedBox(
                            height: height(context) / 40,
                          ),
                          TextFormField(
                            controller: userNameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.person_outline),
                              hintText: "Enter your username",
                            ),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(
                            height: height(context) / 40,
                          ),
                          const Text("Password"),
                          SizedBox(
                            height: height(context) / 40,
                          ),
                          TextFormField(
                            controller: passwordController,
                            cursorColor: myDefaultColor,
                            obscureText: cubit.isPasswordShow,
                            decoration: InputDecoration(
                                fillColor: myDefaultColor,
                                border: const OutlineInputBorder(),
                                prefixIcon: const Icon(Icons.lock_outline),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    cubit.changePasswordMode();
                                  },
                                  icon: cubit.isPasswordShow
                                      ? const Icon(
                                          Icons.visibility_off_outlined)
                                      : const Icon(Icons.visibility_outlined),
                                ),
                                hintText: "Enter your password"),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(
                            height: height(context) / 30,
                          ),
                          MyButton(
                            fontSize: 20.0,
                            borderRadius: 15.0,
                            doubleWidth: width(context) / 5,
                            function: () {
                              navigateTo(context, const DashboardScreen());
                              userNameController.clear();
                              passwordController.clear();
                              if (userNameController.text == name &&
                                  passwordController.text == password) {
                                navigateTo(context, const DashboardScreen());
                                userNameController.clear();
                                passwordController.clear();
                              }
                            },
                            text: "تسجيل الدخول",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
