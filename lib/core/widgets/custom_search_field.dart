import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_colors.dart';

class customSearchField extends StatelessWidget {
  const customSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'This Field is Required'.tr;
      //   }
      //   return null;
      // },
      // keyboardType: ,
      decoration: InputDecoration(
        labelText: 'Search in Market'.tr,
        suffixIcon: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kPrimaryColor,
                foregroundColor: AppColors.kWitheColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            onPressed: () {},
            label: const Icon(Icons.search)),
        border: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 2, color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 2, color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 2, color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
