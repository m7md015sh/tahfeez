import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tahfez_quran/constants/colors.dart';

import 'screens/auth/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();


  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.titleColor,

      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}




