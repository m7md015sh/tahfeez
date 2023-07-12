import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahfez_quran/constants/colors.dart';
import 'package:tahfez_quran/constants/dimensions.dart';
import 'package:tahfez_quran/core/functions/alert_exit.dart';
import 'package:tahfez_quran/screens/auth/forgot_password/forget_password.dart';
import 'package:tahfez_quran/screens/auth/sign_up.dart';
import 'package:tahfez_quran/widgets/auth/custom_button_auth.dart';
import 'package:tahfez_quran/widgets/auth/custom_text_form_auth.dart';
import 'package:tahfez_quran/widgets/auth/custom_text_login_or_signup.dart';
import 'package:tahfez_quran/widgets/auth/custom_title_text_auth.dart';
import 'package:tahfez_quran/widgets/auth/logo_auth.dart';

import '../../core/functions/valied_input.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  // late TextEditingController emailController,passwordController;

 //final controller=Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:WillPopScope(child: Container(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.width10, horizontal: Dimensions.height25),
          child: Form(
            //key: controller.loginFormKey,
            child: ListView(

              children: [
                SizedBox(
                  height: Dimensions.height20,
                ),
                 CustomTitleTextAuth(text: "تسجيل الدخول"),
                 const LogoAuth(),
                SizedBox(
                  height: Dimensions.height20,
                ),
                // CustomTitleTextAuth(text: "Welcome Back"),
                SizedBox(
                  height: Dimensions.height20,
                ),
                //  CustomBodyTextAuth(
                //   text:
                //   "Sign into your account",
                // ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                CustomTextFormAuth(
                  isNumber: false,

                  valid: (val){
                    return validInput(val!, 10 , 100, "email");
                  },
                //  myController: emailController,
                  hintText: "ادخل البريد الالكترونى",
                  labelText: "البريد الالكترونى",
                  prefixIcon: Icons.email_outlined,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  obscure: true,
                  // onTapSuffixIcon: (){
                  //   controller.changeSecurePassword();
                  // },
                  valid: (val){
                    return validInput(val!, 6 , 30, "password");
                  },
                //  myController: passwordController,
                  hintText: "ادخل كلمة المرور",

                  labelText: "كلمة المرور",

                  prefixIcon: Icons.lock_outline,
                 // suffixIcon: controller.isPasswordSecure==true?Icons.remove_red_eye_outlined:Icons.remove_red_eye_rounded,
                ),
                InkWell(
                  onTap: (){
                  //  controller.goToForget();
                    Get.to(ForgetPasswordScreen());
                  },
                  child:  Text(
                    "نسيت كلمة المرور",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: Dimensions.font16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                CustomButtonAuth(
                  text: "تسجيل",
                  onPressed: () {
                  //  controller.doLogin();
                  },
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                CustomTextSignUpOrSignIn(
                    text: "ليس لديك حساب على التطبيق؟",
                    textBtn: "التسجيل ",
                    onTap: () {
                     // controller.goToSignUp();
                      Get.to(SignupScreen());
                    })
              ],
            ),
          ),

        ), onWillPop: alertExitApp));


  }
}
