import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/Log_In_Otp_Page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 100.h,
        ),
        Text(
          "How you’ll log in",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Poppins",
              fontSize: 29.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          textAlign: TextAlign.center,
          "Make sure you keep it as secure as\n possible!",
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontSize: 15.sp),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.r))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.all(Radius.circular(30.r))),
                hintText: "+(___)",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                labelText: "Phone Number",
                labelStyle: TextStyle(color: Colors.grey.shade400)),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.r))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.all(Radius.circular(30.r))),
                hintText: "****",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey.shade400)),
          ),
        ),
        SizedBox(
          height: 70.h,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 5,
                backgroundColor:const Color(0xffFF0083),
                minimumSize: Size(300.w, 45.h)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) =>const LogIn_Otp_Page()));
            },
            child: Text(
              "Proceed",
              style: TextStyle(
                  fontSize: 17.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),

        SizedBox(height: 40.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              tristate: false, // Example with intrastate
              value: _value,
              onChanged: (bool? Value) {
                setState(() {
                  _value = Value!;
                });
              },
            ),
            SizedBox(
              width: 10.w,
            ),
            RichText(
                text: TextSpan(
              children: [
                TextSpan(
                    text: "I agree to the ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        fontFamily: "Poppins",
                        color: Colors.black)),
                TextSpan(text: "Terms & Conditions ",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    fontFamily: "Poppins",
                    color: Colors.red)),
                TextSpan(text: "and ",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    fontFamily: "Poppins",
                    color: Colors.black)),
                TextSpan(text: "Policy.",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    fontFamily: "Poppins",
                    color: Colors.red))
              ],
            ))
          ],
        )
      ]),
    );
  }
}
