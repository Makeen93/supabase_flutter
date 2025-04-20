import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:subabase/core/app_colors.dart';
import 'package:subabase/core/functions/navigate_to.dart';
import 'package:subabase/views/auth/ui/forget_password_view.dart';
import 'package:subabase/views/auth/ui/sign_up_view.dart';
import 'package:subabase/views/auth/ui/widgets/custom_arrow_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_field.dart';

import '../../../core/functions/show_msg.dart';
import '../../nav_bar/ui/main_home_view.dart';
import '../../product_details/logic/cubit/authentication_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is LoginError) {
          showMsg(context, state.message);
        }

        if (state is LoginSuccess) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainHomeView()));
        }
      },
      builder: (context, state) {
        AuthenticationCubit cubit = context.read<AuthenticationCubit>();
        return state is LoginLoading
            ? const Center(child: CircularProgressIndicator())
            : Scaffold(
                body: SafeArea(
                    child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Welcom To Our Market'.tr,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Card(
                          color: AppColors.kWitheColor,
                          margin: const EdgeInsets.all(24),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                CustomTextFormField(
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    labelText: 'Email'.tr),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                  controller: passwordController,
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
                                        navigateTo(context,
                                            const ForgetPasswordView());
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Login'.tr,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    CustomArrowBtn(
                                      onTap: () {
                                        if (formKey.currentState!.validate()) {
                                          cubit.login(
                                              email: emailController.text,
                                              password:
                                                  passwordController.text);
                                        }
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Login with Google'.tr,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
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
                  ),
                )),
              );
      },
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
