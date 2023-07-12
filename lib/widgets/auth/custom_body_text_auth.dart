import 'package:flutter/material.dart';
import 'package:tahfez_quran/constants/colors.dart';
import 'package:tahfez_quran/constants/dimensions.dart';



class CustomBodyTextAuth extends StatelessWidget {
  final String text;
  const CustomBodyTextAuth({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.width30),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Cairo',
            color: AppColors.titleColor,
            fontSize: Dimensions.font12),
      ),
    );
  }
}
