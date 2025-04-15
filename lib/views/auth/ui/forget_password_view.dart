import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subabase/core/app_colors.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter Your Email To Reset Password'.tr,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24,
            ),
            Card(
              color: AppColors.kWitheColor,
              margin: EdgeInsets.all(24),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'Email'.tr),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(
                          text: 'Email'.tr,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
