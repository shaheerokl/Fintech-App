import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/Log_In_Otp_Page.dart';
import 'package:payment_app/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100.h,
          ),
          Center(
            child: Container(
              height: 170.h,
              child: Image.asset("assets/phone.png"),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "Add your mobile number",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
                fontSize: 20.sp),
          ),
          Text(
            "We’ll need to confirm it by sending a text.",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontFamily: "Poppins",
                fontSize: 14.sp),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.r))),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.all(Radius.circular(30.r))),
                  hintText: "+(___)",hintStyle: TextStyle(color: Colors.grey.shade400),
                  labelText: "Phone Number",labelStyle: TextStyle(color: Colors.grey.shade400)),

            ),
          ),
          SizedBox(height: 20.h,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(elevation:5,backgroundColor: Color(0xffFF0083),minimumSize: Size(300.w, 45.h)),
              onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LogIn_Otp_Page()));
              }, child: Text("Proceed", style: TextStyle(
              fontSize: 17.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,color: Colors.white),))
        ],
      ),
    );
  }
}
