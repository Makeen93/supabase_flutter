import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/product_list.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

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
            child: Text('Your Favorite Products'.tr,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          const ProductList(),
        ],
      ),
    );
  }
}
