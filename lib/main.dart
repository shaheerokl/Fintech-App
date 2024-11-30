import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/LoginPage.dart';
import 'package:payment_app/Splash_Screen.dart';
import 'package:payment_app/loan_request_page/Home.dart';
import 'package:payment_app/loan_request_page/Home2.dart';
import 'package:payment_app/loan_request_page/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(

    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    useMaterial3: true,
    ),
    home: SplashScreen(),
    );
    });
  }
}


