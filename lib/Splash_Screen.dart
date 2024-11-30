import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/LoginPage.dart';
import 'package:payment_app/OnboardPage.dart';
import 'package:payment_app/Sign_In_Page.dart';
import 'package:payment_app/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100.h,
          ),
          Container(
            height: 145.h,
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Pay Fast",
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Forget Everything\n You Know About\n Banking",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            height: 180.h,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Splash-screen.png", ))),
          ),
          SizedBox(
            height: 20.h,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => LoginPage()));
            },
            child: Text(
              "Log In",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
              minimumSize: Size(220.w, 40.h),
              backgroundColor: Color(0xffFF0083),
              shadowColor: Colors.black,
              elevation: 7,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignInPage()));
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xffFF0083),
              shadowColor: Colors.black,
              elevation: 7,
              minimumSize: Size(220.w, 40.h),
            ),
          )
        ],
      ),
    );
  }
}
