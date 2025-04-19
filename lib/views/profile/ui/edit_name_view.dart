import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_field.dart';

import '../../../core/app_colors.dart';
import '../../../core/functions/build_app_bar.dart';

class EditNameView extends StatelessWidget {
  const EditNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, 'Edit Name'.tr),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFormField(labelText: 'Enter Name'.tr),
            const SizedBox(
              height: 15,
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
                  child: Text('Update'.tr),
                )),
          ],
        ),
      ),
    );
  }
}
