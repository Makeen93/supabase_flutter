import 'package:flutter/material.dart';

import '../app_colors.dart';

AppBar buildCustomAppBar(BuildContext context, String title) {
  return AppBar(
    centerTitle: true,
    backgroundColor: AppColors.kPrimaryColor,
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back_ios, color: AppColors.kWitheColor),
    ),
    title: Text(title, style: const TextStyle(color: AppColors.kWitheColor)),
  );
}
