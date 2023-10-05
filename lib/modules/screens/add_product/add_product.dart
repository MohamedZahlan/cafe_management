import 'package:cafe_management/config/themes/colors.dart';
import 'package:cafe_management/constants/constants.dart';
import 'package:cafe_management/modules/dashboard/cubit/cafe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../widgets/my_button.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CafeCubit, CafeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        CafeCubit cubit = CafeCubit.get(context);
        var productNameController = TextEditingController();
        var productPriceController = TextEditingController();
        var formKey = GlobalKey<FormState>();
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Center(child: Text("منتج جديد")),
              SizedBox(
                height: height(context) / 30,
              ),
              DropdownButton(
                hint: const Text('اختر القسم'),
                icon: const Icon(Icons.arrow_drop_down_outlined),
                value: cubit.value,
                isExpanded: true,
                dropdownColor: myDefaultColor,
                elevation: 0,
                style: Theme.of(context).textTheme.bodyMedium,
                items: const [
                  DropdownMenuItem(
                    value: 'soft drinks',
                    child: Text("soft drinks"),
                  ),
                  DropdownMenuItem(
                    value: 'Coffee',
                    child: Text("Coffee"),
                  ),
                  DropdownMenuItem(
                    value: 'Hot Drinks',
                    child: Text("Hot Drinks"),
                  ),
                  DropdownMenuItem(
                    value: 'Chocolate Drinks',
                    child: Text("Chocolate Drinks"),
                  ),
                  DropdownMenuItem(
                    value: 'Fresh Juice',
                    child: Text("Fresh Juice"),
                  ),
                  DropdownMenuItem(
                    value: 'Sweet',
                    child: Text("Sweet"),
                  ),
                  DropdownMenuItem(
                    value: 'Waffle',
                    child: Text("Waffle"),
                  ),
                ],
                onChanged: (val) {
                  cubit.changeDropDownButton(val);
                },
              ),
              SizedBox(
                height: height(context) / 30,
              ),
              const Text("أسم المنتج"),
              SizedBox(
                height: height(context) / 90,
              ),
              TextFormField(
                style: Theme.of(context).textTheme.bodyMedium,
                controller: productNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "يجب كتابه أسم المنتج";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: height(context) / 30,
              ),
              const Text("سعر المنتج"),
              SizedBox(
                height: height(context) / 90,
              ),
              TextFormField(
                style: Theme.of(context).textTheme.bodyMedium,
                controller: productPriceController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "يجب كتابه سعر المنتج";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: height(context) / 30,
              ),
              MyButton(
                text: "أضافه المنتج",
                function: () {
                  if (formKey.currentState!.validate() && cubit.value != null) {
                    productNameController.clear();
                    productPriceController.clear();
                  }
                },
                doubleWidth: width(context) / 8,
                fontSize: height(context) / 45,
                borderRadius: 10.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
