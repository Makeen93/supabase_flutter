import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:subabase/core/app_colors.dart';
import 'package:subabase/views/auth/ui/login_view.dart';
import 'package:subabase/views/auth/ui/widgets/custom_arrow_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_btn.dart';
import 'package:subabase/views/auth/ui/widgets/custom_text_field.dart';

import '../../../core/functions/navigate_to.dart';
import '../../../core/functions/show_msg.dart';
import '../../product_details/logic/cubit/authentication_cubit.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is SignUpError) {
          showMsg(context, state.message);
        }
        if (state is SignUpSuccess) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginView()));
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
                                    controller: nameController,
                                    keyboardType: TextInputType.name,
                                    labelText: 'Name'.tr),
                                const SizedBox(
                                  height: 20,
                                ),
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
                                      onTap: () {},
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
                                      'Sign Up'.tr,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    CustomArrowBtn(
                                      onTap: () {
                                        if (formKey.currentState!.validate()) {
                                          cubit.signUp(
                                              name: nameController.text,
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
                                      'Already have an account?'.tr,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
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
                  ),
                )),
              );
      },
    );
  }
}
