import 'package:flutter/material.dart';
import 'package:tahfez_quran/constants/dimensions.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/logo.png",width: Dimensions.width300/1.3,height: Dimensions.height300/1.3,);
  }
}
