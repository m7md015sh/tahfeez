import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahfez_quran/constants/dimensions.dart';
import 'package:tahfez_quran/screens/auth/login.dart';
import 'package:tahfez_quran/widgets/auth/logo_auth.dart';

import '../../../core/functions/alert_exit.dart';
import '../../../core/functions/valied_input.dart';
import '../../widgets/auth/custom_button_auth.dart';
import '../../widgets/auth/custom_text_form_auth.dart';
import '../../widgets/auth/custom_text_login_or_signup.dart';
import '../../widgets/auth/custom_title_text_auth.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   Get.lazyPut(()=>SignUpControllerImp());
    // final  controller  =Get.find<RegisterController>();
   // Get.put(RegisterController());
    return Scaffold(
        body: WillPopScope(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: Dimensions.height30,
                              horizontal: Dimensions.height25),
                          child: Form(
                           // key: controller.signupFormKey,
                            child: ListView(
                              children: [
                                 CustomTitleTextAuth(text: "التسجيل فى التطبيق".tr),

                                const LogoAuth(),


                                CustomTextFormAuth(
                                  isNumber: false,
                                  valid: (val) {
                                    return validInput(val!, 5, 80, "name");
                                  },
                                 // myController: controller.firstNameController,
                                  hintText: "ادخل اسمك كاملا".tr,
                                  labelText: "الاسم".tr,
                                  prefixIcon: Icons.person,
                                ),

                                CustomTextFormAuth(
                                  isNumber: false,
                                  valid: (val) {
                                    return validInput(val!, 12, 30, "email");
                                  },
                                 // myController: controller.emailController,
                                  hintText: "ادخل البريد الالكترونى".tr,
                                  labelText: "البريد الالكترونى".tr,
                                  prefixIcon: Icons.email_outlined,
                                ),
                                CustomTextFormAuth(
                                  isNumber: true,
                                  valid: (val) {
                                    return validInput(val!, 11, 11, "phone");
                                  },
                                //  myController: controller.phoneController,
                                  hintText: "ادخل رقم الهاتف".tr,
                                  labelText: "رقم الهاتف".tr,
                                  prefixIcon: Icons.phone,
                                ),
                                CustomTextFormAuth(
                                  isNumber: false,
                                  valid: (val) {
                                    return validInput(val!, 8, 30, "password");
                                  },
                                 // obscure: controller.isPasswordSecure,
                                  onTapSuffixIcon: () {
                                 //   controller.changeSecurePassword();
                                  },
                                 // myController: controller.passwordController,
                                  hintText: "ادخل كلمة المرور".tr,
                                  labelText: "كلمة المرور".tr,
                                  prefixIcon: Icons.lock_outline,
                                  // suffixIcon:
                                  //     controller.isPasswordSecure == true
                                  //         ? Icons.remove_red_eye_outlined
                                  //         : Icons.remove_red_eye_rounded,
                                ),
                                CustomButtonAuth(
                                    text: "تسجيل".tr,
                                    onPressed: () {
                                      //controller.doSignup();
                                    },
                                  ),

                                SizedBox(
                                  height: Dimensions.height20,
                                ),
                                CustomTextSignUpOrSignIn(
                                    text: "هل لديك حساب فى التطبيق؟".tr,
                                    textBtn: "تسجيل الدخول ".tr,
                                    onTap: () {
                                      //Get.toNamed(RoutesConst.login);
                                      Get.to(LoginScreen());
                                    })
                              ],
                            ),
                          ),
                        ),
                        onWillPop: alertExitApp));
  }
}
