import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tahfez_quran/constants/assets_image.dart';
import 'package:tahfez_quran/constants/colors.dart';
import 'package:tahfez_quran/constants/dimensions.dart';
import 'package:tahfez_quran/core/functions/valied_input.dart';
import 'package:tahfez_quran/widgets/auth/custom_body_text_auth.dart';
import 'package:tahfez_quran/widgets/auth/custom_button_auth.dart';
import 'package:tahfez_quran/widgets/auth/custom_text_form_auth.dart';
import 'package:tahfez_quran/widgets/auth/custom_title_text_auth.dart';
import 'package:tahfez_quran/widgets/auth/logo_auth.dart';


class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

   // final controller=Get.find<CheckEmailController>();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.titleColor),
        title: Text(
          "نسيت كلمة المرور",
          style: TextStyle(
            fontFamily: 'Cairo',
              color: AppColors.titleColor,
              fontWeight: FontWeight.bold,
              fontSize: Dimensions.font23),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: Dimensions.screenHeight,
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.width60, horizontal: Dimensions.height25),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                  child: Lottie.asset(
                    AppImageAsset.forgotPasswordLottie,
                    width: Dimensions.width230,
                    height: Dimensions.width230,
                  )),
              SizedBox(
                height: Dimensions.height60,
              ),
              const CustomTitleTextAuth(text: "تاكيد البريد الالكترونى"),

              const CustomBodyTextAuth(
                text:
                "ادخل بريدك الالكترونى لكى يصلك رمز التاكيد من خلاله",
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Form(
               // key: controller.checkEmailFormKey,

                child: CustomTextFormAuth(
                  isNumber: false,

                  valid: (val){
                    return validInput(val!, 12 , 60, "email");
                  },
                  //myController: controller.emailController,
                  hintText: "Enter Your Email",
                  labelText: "Email",
                  prefixIcon: Icons.email_outlined,
    //myController: controller.emailController,
                ),
              ),

              CustomButtonAuth(
                text: "     تفقد البريد الالكترونى     ",
                onPressed: () {
                  //  controller.doLogin();
                },
              ),
            ],
          ),
        ),
      ));


  }
}
