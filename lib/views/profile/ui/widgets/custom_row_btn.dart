import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomRowBtn extends StatelessWidget {
  const CustomRowBtn({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });
  final void Function() onTap;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                // Icons.person,
                color: AppColors.kWitheColor,
              ),
              Text(text,
                  // 'Edit Name'.tr,
                  style: const TextStyle(
                    color: AppColors.kWitheColor,
                    fontWeight: FontWeight.bold,
                  )),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.kWitheColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
