import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custom_search_field.dart';
import '../../../core/widgets/product_list.dart';
import 'widgets/categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const CustomSearchField(),
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/buy.jpg'),
          const SizedBox(
            height: 15,
          ),
          Text('Popular Categories'.tr,
              style: const TextStyle(
                fontSize: 20,
                // fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 15,
          ),
          const CategoriesList(),
          const SizedBox(
            height: 15,
          ),
          Text('Recently Products'.tr,
              style: const TextStyle(
                fontSize: 20,
              )),
          const SizedBox(
            height: 15,
          ),
          const ProductList(),
        ],
      ),
    );
  }
}
