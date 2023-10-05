import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cafe_management/constants/constants.dart';
import 'package:cafe_management/modules/dashboard/cubit/cafe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../config/themes/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CafeCubit, CafeStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        CafeCubit cubit = CafeCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Welcome',
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                ),
                WavyAnimatedText(
                  '50amsena2 cafe',
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {},
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.logout_sharp,
                )),
          ),
          // bottomNavigationBar: Expanded(
          //   child: Container(
          //     padding: EdgeInsets.symmetric(
          //         horizontal: width(context) / 60,
          //         vertical: height(context) / 100),
          //     child: SingleChildScrollView(
          //       child: Column(
          //         mainAxisSize: MainAxisSize.min,
          //         children: [
          //           Row(
          //             children: [
          //               Expanded(
          //                 child: Column(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: [
          //                     Container(
          //                       color: myDefaultColor,
          //                       padding: EdgeInsets.symmetric(
          //                           horizontal: width(context) / 15,
          //                           vertical: height(context) / 100),
          //                       child: Text(
          //                         "أسم المنتج",
          //                         style: Theme.of(context).textTheme.bodyLarge,
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       height: height(context) / 40,
          //                     ),
          //                     SizedBox(
          //                       height: height(context) / 4,
          //                       width: 70,
          //                       child: ListView.separated(
          //                         //physics: const NeverScrollableScrollPhysics(),
          //                         itemBuilder: (context, index) =>
          //                             const Text("قهوة تركي"),
          //                         separatorBuilder: (context, index) =>
          //                             Container(
          //                           height: 1,
          //                           width: 150,
          //                           color: Colors.black,
          //                         ),
          //                         itemCount: 40,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               Expanded(
          //                 child: Column(
          //                   children: [
          //                     Container(
          //                       color: myDefaultColor,
          //                       padding: EdgeInsets.symmetric(
          //                           horizontal: width(context) / 15,
          //                           vertical: height(context) / 100),
          //                       child: Text(
          //                         "سعره",
          //                         style: Theme.of(context).textTheme.bodyLarge,
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       height: height(context) / 40,
          //                     ),
          //                     SizedBox(
          //                       height: height(context) / 3,
          //                       width: 70,
          //                       child: ListView.separated(
          //                         //physics: const NeverScrollableScrollPhysics(),
          //                         itemBuilder: (context, index) =>
          //                             const Text("10"),
          //                         separatorBuilder: (context, index) =>
          //                             Container(
          //                           height: 1,
          //                           width: 150,
          //                           color: Colors.black,
          //                         ),
          //                         itemCount: 30,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               Expanded(
          //                 child: Column(
          //                   children: [
          //                     Container(
          //                       color: myDefaultColor,
          //                       padding: EdgeInsets.symmetric(
          //                           horizontal: width(context) / 15,
          //                           vertical: height(context) / 100),
          //                       child: Text(
          //                         "الكمية",
          //                         style: Theme.of(context).textTheme.bodyLarge,
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       height: height(context) / 40,
          //                     ),
          //                     SizedBox(
          //                       height: height(context) / 3,
          //                       width: 70,
          //                       child: ListView.separated(
          //                         //physics: const NeverScrollableScrollPhysics(),
          //                         itemBuilder: (context, index) =>
          //                             const Text("1"),
          //                         separatorBuilder: (context, index) =>
          //                             Container(
          //                           height: 1,
          //                           width: 150,
          //                           color: Colors.black,
          //                         ),
          //                         itemCount: 30,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               Expanded(
          //                 child: Column(
          //                   children: [
          //                     Container(
          //                       color: myDefaultColor,
          //                       padding: EdgeInsets.symmetric(
          //                           horizontal: width(context) / 15,
          //                           vertical: height(context) / 100),
          //                       child: Text(
          //                         "أجمالي المبلغ",
          //                         style: Theme.of(context).textTheme.bodyLarge,
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       height: height(context) / 40,
          //                     ),
          //                     SizedBox(
          //                       height: height(context) / 3,
          //                       width: 70,
          //                       child: ListView.separated(
          //                         //physics: const NeverScrollableScrollPhysics(),
          //                         itemBuilder: (context, index) =>
          //                             const Text("10"),
          //                         separatorBuilder: (context, index) =>
          //                             Container(
          //                           height: 1,
          //                           width: 150,
          //                           color: Colors.black,
          //                         ),
          //                         itemCount: 30,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigationRail(
                backgroundColor: HexColor('#53B175'),
                useIndicator: true,
                indicatorColor: Colors.white,
                extended: cubit.isExpanded,
                labelType: NavigationRailLabelType.all,
                selectedIconTheme: const IconThemeData(
                  color: Colors.black,
                ),
                unselectedIconTheme: const IconThemeData(
                  color: Colors.white,
                ),
                onDestinationSelected: (value) {
                  cubit.changeNavIndex(value);
                },
                selectedLabelTextStyle: Theme.of(context).textTheme.bodyLarge,
                destinations: cubit.navRail,
                selectedIndex: cubit.currentIndex,
              ),
              Expanded(
                  child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width(context) / 40,
                        vertical: height(context) / 40),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          cubit.screens[cubit.currentIndex],
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    color: Colors.red,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                ],
              )),
            ],
          ),
        );
      },
    );
  }
}
