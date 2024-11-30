import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:payment_app/LoginPage.dart';
import 'package:payment_app/loan_request_page/Home.dart';
import 'package:payment_app/main.dart';

class Onboardpage extends StatefulWidget {
  Onboardpage({super.key});

  @override
  State<Onboardpage> createState() => _OnboardpageState();
}

class _OnboardpageState extends State<Onboardpage> {
  int currentIndex = 0;

  TextStyle name() {
    return TextStyle(
        fontSize: 16.0.sp, fontWeight: FontWeight.bold, color: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    final introKey = GlobalKey<IntroductionScreenState>();
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(activeColor:  Colors.black,),
        showDoneButton: false,
        showNextButton: false,
        showSkipButton: true,
        key: introKey,
        freeze: false,
        globalBackgroundColor: Colors.white,
        allowImplicitScrolling: true,
        showBackButton: false,
        // autoScrollDuration: 3000,
        // infiniteAutoScroll: true,
        onChange: (index) {
          currentIndex = index;
        },
        globalHeader: Align(
          alignment: Alignment.topRight,
        ),
        globalFooter: SizedBox(
          height: 50.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(200.w, 40.h),
              backgroundColor:  Color(0xffFF0083),
            ),
            child: Text(
              currentIndex == 2 ? "Done" : "Next",
              style: name(),
            ),
            onPressed: () {
              if (currentIndex == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Home()));
              } else {
                introKey.currentState!.next();
              }
              //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>login()));
            },
          ),
        ),
        onDone: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Home()));
        },
        onSkip: () {Navigator.of(context).push(MaterialPageRoute(builder: (_) => Home()));},
        back: Text("back",style: TextStyle(color: CupertinoColors.black),),
        done: Text("done"),
        next: Text("next"),
        skip: Text("Skip",style: TextStyle(color:Color(0xffFF0083)),),
        pages: [
          PageViewModel(
            decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 32.sp,
                ),
                bodyTextStyle: TextStyle(
                    color: Color(0xff757575),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400)),
            title: "Send Money",
            body:
"Send money to all networks and banks\n right from your Pay Fast\n account.",
    image: Column(
      children: [
        SizedBox(height: 60.h,),
               SizedBox(
                  height: 200.h,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/Splash1.png",

                  )),
           ] ),
          ),
          PageViewModel(
            decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 26.sp,
                ),
                bodyTextStyle: TextStyle(
                    color: Color(0xff757575),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400)),
            title: "Pay Bills",
            body:
                "Pay Bills such as Electricity, Water bill, TV\n subscriptions etc.\n Buy airtime & Bundles.",
            image: Column(
                children: [
                  SizedBox(height: 60.h,),
                  SizedBox(
                      height: 200.h,
                      width: double.infinity,
                      child: Image.asset(
                        "assets/Splash2.png",

                      )),
                ] ),
          ),
          PageViewModel(
            decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 32.sp,
                ),
                bodyTextStyle: TextStyle(
                    color: Color(0xff757575),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400)),
            title: "Pay Merchants",
            body:
                "Even with insufficient balance, Pay by\n Phone at Merchants with Pay Fast\n Accounts.",
            image: Column(
                children: [
                  SizedBox(height: 60.h,),
                  SizedBox(
                      height: 200.h,
                      width: double.infinity,
                      child: Image.asset(
                        "assets/Splash3.png",

                      )),
                ] ),
          ),
        ]);
  }
}
