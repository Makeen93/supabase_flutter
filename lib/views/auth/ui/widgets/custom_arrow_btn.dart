import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomArrowBtn extends StatelessWidget {
  const CustomArrowBtn({Key? key, this.onTap}) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimaryColor,
          foregroundColor: AppColors.kWitheColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          child: Icon(Icons.arrow_forward),
        ));
  }
}
