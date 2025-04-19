import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subabase/core/functions/navigate_to.dart';
import 'package:subabase/views/profile/ui/edit_name_view.dart';

import '../../../core/app_colors.dart';
import 'widgets/custom_row_btn.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: Card(
          color: AppColors.kWitheColor,
          margin: const EdgeInsets.all(24),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: AppColors.kPrimaryColor,
                  foregroundColor: AppColors.kWitheColor,
                  radius: 55,
                  child: Icon(
                    Icons.person,
                    size: 45,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'User Name'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'User Email'.tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomRowBtn(
                  onTap: () => navigateTo(context, const EditNameView()),
                  icon: Icons.person,
                  text: 'Edit Name'.tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomRowBtn(
                  onTap: () {},
                  icon: Icons.shopping_basket,
                  text: 'My Orders'.tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomRowBtn(
                  onTap: () {},
                  icon: Icons.logout,
                  text: 'Logout'.tr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
