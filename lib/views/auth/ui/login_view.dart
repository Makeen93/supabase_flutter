import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subabase/core/app_colors.dart';
import 'package:subabase/core/functions/navigate_to.dart';
import 'package:subabase/views/auth/ui/forget_password_view.dart';
import 'package:subabase/views/auth/ui/sign_up_view.dart';
import 'package:subabase/views/auth/ui/widgets/custom_arrow_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_field.dart';
import 'package:subabase/views/nav_bar/ui/main_home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Welcom To Our Market'.tr,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            Card(
              color: AppColors.kWitheColor,
              margin: const EdgeInsets.all(24),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'Email'.tr),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      isSecured: true,
                      labelText: 'Password'.tr,
                      sufficxIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.visibility_off)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(
                          text: 'Forget Password?'.tr,
                          onTap: () {
                            navigateTo(context, const ForgetPasswordView());
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Login'.tr,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        CustomArrowBtn(
                          onTap: () => navigateTo(context, MainHomeView()),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Login with Google'.tr,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        CustomArrowBtn(
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Donot have an account?'.tr,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomTextButton(
                          text: 'Sign Up'.tr,
                          onTap: () {
                            navigateTo(context, const SignUpView());
                          },
                        )
                      ],
                    )
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
