import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      required this.labelText,
      this.sufficxIcon,
      this.isSecured = false,
      this.keyboardType})
      : super(key: key);
  final String labelText;
  final Widget? sufficxIcon;
  final bool isSecured;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecured,
      obscuringCharacter: '*',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This Field is Required'.tr;
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: sufficxIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
