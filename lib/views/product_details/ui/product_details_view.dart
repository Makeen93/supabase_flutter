import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_field.dart';

import '../../../core/app_colors.dart';
import '../../../core/functions/build_app_bar.dart';
import '../../../core/widgets/cache_image.dart';
import 'widgets/comments_list.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildCustomAppBar(context, 'Product Details'),
        body: ListView(
          children: [
            const CacheImage(
                url:
                    "https://img.freepik.com/free-vector/white-product-podium-with-green-tropical-palm-leaves-golden-round-arch-green-wall_87521-3023.jpg?t=st=1744988091~exp=1744991691~hmac=f5bfe8311052e172ac4f769168e4cc166583e9a100fe7e21b1484827103e00f8&w=900"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Product Name'),
                      Text('123 LE'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('3'),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.favorite,
                        color: AppColors.kGreyColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Product Description'),
                  const SizedBox(
                    height: 20,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextFormField(
                      sufficxIcon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.send)),
                      labelText: 'Type Your Feedback'),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Comments',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CommentsList(),
                ],
              ),
            )
          ],
        ));
  }
}
