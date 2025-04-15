import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({Key? key, this.onTap, required this.text})
      : super(key: key);
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
    );
  }
}
