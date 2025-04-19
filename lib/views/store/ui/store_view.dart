import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/custom_search_field.dart';
import '../../../core/widgets/product_list.dart';
import '../../home/ui/widgets/categories_list.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text('Welcome To Our Marker'.tr,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomSearchField(),
          const SizedBox(
            height: 15,
          ),
          const ProductList(),
        ],
      ),
    );
  }
}
