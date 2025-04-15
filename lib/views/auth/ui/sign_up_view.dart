import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subabase/core/app_colors.dart';
import 'package:subabase/views/auth/ui/widgets/custom_arrow_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

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
              'Welcom To Our Market'.tr,
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
                        keyboardType: TextInputType.name, labelText: 'Name'.tr),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'Email'.tr),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      isSecured: true,
                      labelText: 'Password'.tr,
                      sufficxIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.visibility_off)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(
                          text: 'Forget Password?'.tr,
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Login'.tr,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        CustomArrowBtn(
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Login with Google'.tr,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        CustomArrowBtn(
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?'.tr,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CustomTextButton(
                          text: 'Login'.tr,
                          onTap: () {
                            Navigator.pop(context);
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
