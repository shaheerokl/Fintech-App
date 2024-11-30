import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/OnboardPage.dart';
import 'package:payment_app/loan_request_page/Home.dart';
import 'package:payment_app/LoginPage.dart';

class LogIn_Otp_Page extends StatefulWidget {
  const LogIn_Otp_Page({super.key});

  @override
  State<LogIn_Otp_Page> createState() => _LogIn_Otp_PageState();
}

class _LogIn_Otp_PageState extends State<LogIn_Otp_Page> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  TextEditingController txt6 = TextEditingController();
bool invalidOtp=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Text(
                "verify",
                style: TextStyle(
                    fontSize: 29.sp,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Please enter the 6 digit one time\n code to activate your account!",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 40.h,
        
              ),
              Text(invalidOtp?"Invalid Otp!":"",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w700,color: Colors.red),),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myInputBox(context, txt1),
                  myInputBox(context, txt2),
                  myInputBox(context, txt3),
                  myInputBox(context, txt4),
                  myInputBox(context, txt5),
                  myInputBox(context, txt6)
                ],
              ),
              SizedBox(height: 30.h,),
              Text("Didn’t receive a Code?",style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400),),
              SizedBox(height: 30.h,),
              Text("Resend Code!",style: TextStyle(decoration: TextDecoration.underline,
                  fontSize: 16.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,),),
              SizedBox(height: 60.h,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation:5,backgroundColor: Color(0xffFF0083),minimumSize: Size(300.w, 45.h)),
                  onPressed: (){
                    final Otp=txt1.text+txt2.text+txt3.text+txt4.text+txt5.text+txt6.text;
                   if(Otp=="123456"){
                     Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Onboardpage()));
                   }else{
                     setState(() {
                 invalidOtp=true;
                     });
                   }
                  }, child: Text("Verify", style: TextStyle(
                  fontSize: 17.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}

Widget myInputBox(BuildContext context, TextEditingController Controller) {
  return Container(
    height: 35.h,
    width: 35.w,
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(5.r))),
    child: TextField(textAlign: TextAlign.center,
      decoration: InputDecoration(counterText: ""),
      maxLength: 1,
      controller: Controller,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 16.sp),
      onChanged: (value){
        if(value.length==1){
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}
