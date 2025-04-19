import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subabase/core/functions/navigate_to.dart';

import '../../views/product_details/ui/product_details_view.dart';
import '../app_colors.dart';
import 'cache_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateTo(context, const ProductDetailsView()),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: CacheImage(
                      url:
                          "https://img.freepik.com/free-vector/white-product-podium-with-green-tropical-palm-leaves-golden-round-arch-green-wall_87521-3023.jpg?t=st=1744988091~exp=1744991691~hmac=f5bfe8311052e172ac4f769168e4cc166583e9a100fe7e21b1484827103e00f8&w=900"),
                ),
                Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    width: 65,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: const Text(
                      '10% off',
                      style: TextStyle(
                        color: AppColors.kWitheColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Name'.tr,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: AppColors.kGreyColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '100 SAR'.tr,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '100 SAR'.tr,
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                // fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.kGreyColor),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.kPrimaryColor,
                            foregroundColor: AppColors.kWitheColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 12),
                            child: Text('Buy Now'.tr),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
